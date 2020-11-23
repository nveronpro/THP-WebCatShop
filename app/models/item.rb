class Item < ApplicationRecord
    validates :title, presence: true, length: { in: 5..140 }
    validates :description, presence: true, length: { in: 20..1000 }
    validates :price, presence: true,  :inclusion => 0..1000
    validates :image_url, presence: true

    has_many :carditems
    has_many :carts, through: :carditems

    has_many :associate_order_items
    has_many :order, through: :associate_order_items
end
