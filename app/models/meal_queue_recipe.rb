class MealQueueRecipe < ActiveRecord::Base
  belongs_to :meal_queue
  belongs_to :recipe
end
