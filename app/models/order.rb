class Order < ApplicationRecord
	belongs_to :user
	has_many :associate_order_items
	has_many :item, through: :associate_order_items
end
