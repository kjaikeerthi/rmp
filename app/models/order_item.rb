class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :food
  attr_accessible :price
end
