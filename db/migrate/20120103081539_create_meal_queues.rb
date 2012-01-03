class CreateMealQueues < ActiveRecord::Migration
  def change
    create_table :meal_queues do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
