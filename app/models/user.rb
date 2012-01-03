class User < ActiveRecord::Base
  has_one :meal_queue
  has_one :shopping_list
end
