class RemoveQuantityFromShoppingListIngredients < ActiveRecord::Migration
  def up
    remove_column :shopping_list_ingredients, :quantity
  end

  def down
    add_column :shopping_list_ingredients, :quantity, :float
  end
end
