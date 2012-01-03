class CreateShoppingListIngredients < ActiveRecord::Migration
  def change
    create_table :shopping_list_ingredients do |t|
      t.integer :shopping_list_id
      t.integer :ingredient_id
      t.float :quantity
      t.boolean :purchased

      t.timestamps
    end
  end
end
