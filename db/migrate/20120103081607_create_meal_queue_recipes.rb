class CreateMealQueueRecipes < ActiveRecord::Migration
  def change
    create_table :meal_queue_recipes do |t|
      t.integer :meal_queue_id
      t.integer :recipe_id
      t.boolean :completed

      t.timestamps
    end
  end
end
