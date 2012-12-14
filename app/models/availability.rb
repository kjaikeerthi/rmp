class Availability < ActiveRecord::Base
  belongs_to :food
  attr_accessible :quantity
end
