class Cart < ApplicationRecord
    has_many :carditems
    has_many :items, through: :carditems

    belongs_to :user
end
