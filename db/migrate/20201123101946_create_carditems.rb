class CreateCarditems < ActiveRecord::Migration[6.0]
  def change
    create_table :carditems do |t|
      t.belongs_to :item
      t.belongs_to :cart
      t.timestamps
    end
  end
end
