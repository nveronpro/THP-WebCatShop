class Order < ApplicationRecord
	after_create :order_send
	belongs_to :user
	has_many :associate_order_items
	has_many :item, through: :associate_order_items
	
	def order_send
		UserMailer.order_email(self).deliver_now
	end
end
