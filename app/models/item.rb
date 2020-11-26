class Item < ApplicationRecord
    validates :title, presence: true, length: { in: 3..20 }
    validates :description, presence: true, length: { in: 20..1000 }
    validates :price, presence: true,  :inclusion => 0..1000

    has_one_attached :avatar

    has_many :carditems
    has_many :carts, through: :carditems

    has_many :associate_order_items
    has_many :order, through: :associate_order_items

    belongs_to :cat, optional: true
end
