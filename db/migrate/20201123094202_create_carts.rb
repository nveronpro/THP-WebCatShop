class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.belongs_to :user, index: true
      t.decimal :price
      t.string :adress
      t.string :adress_sup
      t.string :ville
      t.string :code
      t.timestamps
    end
  end
end
