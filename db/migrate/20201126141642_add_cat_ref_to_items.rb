class AddCatRefToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :cat, foreign_key: true
  end
end
