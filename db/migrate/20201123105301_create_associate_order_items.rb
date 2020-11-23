class CreateAssociateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :associate_order_items do |t|
      t.belongs_to :order, index: true
      t.belongs_to :item, index: true

      t.timestamps
    end
  end
end
