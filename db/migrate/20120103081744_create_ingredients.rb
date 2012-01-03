class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :unit_id
      t.string :name

      t.timestamps
    end
  end
end
