namespace :punch do
  desc 'Seed database with punchfork data'
  task :seed do
    puts "Loading punchfork data"

    SRC = "lib/assets/html/"

    Dir.open(SRC).each do |fname|
      next if fname == "." or fname == ".."    

      puts fname
      f = File.open(SRC + fname)

      doc = Nokogiri::HTML(f)
      title = doc.search('h1[itemprop=name]').inner_text

      recipe = Recipe.new( name: title )

      ingrs = doc.search('#categorized-ingredients li[itemprop=ingredients]')
      ingrs.each do |ingr|
        n = ingr.search('span.ingredient-name').inner_text
        q = ingr.search('span.ingredient-n').inner_text
        u = ingr.search('span.ingredient-unit').inner_text

        unless n.empty?
          unless u.empty?
            # Clean up unit
            u = u.gsub(/-/, ' ').gsub(/[().]/, '').downcase.singularize

            unit        = Unit.find_or_create_by_recipe_name(u)
            ingredient  = Ingredient.find_or_create_by_unit_id_and_name(unit_id: unit.id, name: n)
          else
            ingredient = Ingredient.find_or_create_by_name(name: n)  
          end

          RecipeIngredient.create(recipe: recipe, ingredient: ingredient, quantity: q) 
        end
      end
      recipe.save
      f.close
    end
  end
  
  desc 'Download punchform homepage into lib/assets/html'
  task :download do
    require 'mechanize'

    puts 'Downloading punchfork homepage'

    URL = 'http://www.punchfork.com'
    SRC = 'lib/assets/html/'

    agent = Mechanize.new

    # Find all recipes on the homepage
    recipe_links = agent.get(URL).search('div.recipe-card > a')

    recipe_links.each do |link|

      # Navigate to recipe link
      page = agent.get(URL + link.attributes['href'].content)

      # Get title and replace spaces
      title = page.search('h1[itemprop=name]').inner_text
      title = title.gsub(/ /, '_').gsub(/"/, '')

      # Download page
      name = SRC + title + '.html'
      page.save_as(name)
      puts "Downloaded file: #{name}"
    end
  end

  desc 'Empty downloaded punchfork recipes from lib/assets/html'
  task :delete => :environment do
    SRC = "lib/assets/html/"

    puts "Emptying #{SRC} directory"

    count = 0
    Dir.open(SRC).each do |fname|
      next if fname == "." or fname == ".."    
      puts fname
      File.delete(SRC + fname)
      count += 1
    end
    puts "Deleted #{count} files."
  end
end