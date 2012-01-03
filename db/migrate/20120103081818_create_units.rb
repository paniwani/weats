class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :recipe_name
      t.string :shopping_name
      t.string :type
      t.float :conversion

      t.timestamps
    end
  end
end
