class MealQueueRecipesController < ApplicationController
  # GET /meal_queue_recipes
  # GET /meal_queue_recipes.json
  def index
    @meal_queue_recipes = MealQueueRecipe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meal_queue_recipes }
    end
  end

  # GET /meal_queue_recipes/1
  # GET /meal_queue_recipes/1.json
  def show
    @meal_queue_recipe = MealQueueRecipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meal_queue_recipe }
    end
  end

  # GET /meal_queue_recipes/new
  # GET /meal_queue_recipes/new.json
  def new
    @meal_queue_recipe = MealQueueRecipe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meal_queue_recipe }
    end
  end

  # GET /meal_queue_recipes/1/edit
  def edit
    @meal_queue_recipe = MealQueueRecipe.find(params[:id])
  end

  # POST /meal_queue_recipes
  # POST /meal_queue_recipes.json
  def create
    @meal_queue_recipe = MealQueueRecipe.new(params[:meal_queue_recipe])

    respond_to do |format|
      if @meal_queue_recipe.save
        format.html { redirect_to @meal_queue_recipe, notice: 'Meal queue recipe was successfully created.' }
        format.json { render json: @meal_queue_recipe, status: :created, location: @meal_queue_recipe }
      else
        format.html { render action: "new" }
        format.json { render json: @meal_queue_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meal_queue_recipes/1
  # PUT /meal_queue_recipes/1.json
  def update
    @meal_queue_recipe = MealQueueRecipe.find(params[:id])

    respond_to do |format|
      if @meal_queue_recipe.update_attributes(params[:meal_queue_recipe])
        format.html { redirect_to @meal_queue_recipe, notice: 'Meal queue recipe was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal_queue_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_queue_recipes/1
  # DELETE /meal_queue_recipes/1.json
  def destroy
    @meal_queue_recipe = MealQueueRecipe.find(params[:id])
    @meal_queue_recipe.destroy

    respond_to do |format|
      format.html { redirect_to meal_queue_recipes_url }
      format.json { head :ok }
    end
  end
end
