class RemoveQuantityFromRecipeIngredients < ActiveRecord::Migration
  def up
    remove_column :recipe_ingredients, :quantity
  end

  def down
    add_column :recipe_ingredients, :quantity, :decimal
  end
end
