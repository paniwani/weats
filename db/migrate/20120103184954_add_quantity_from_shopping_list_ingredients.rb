class AddQuantityFromShoppingListIngredients < ActiveRecord::Migration
  def change
    add_column :shopping_list_ingredients, :quantity, :string
  end
end
