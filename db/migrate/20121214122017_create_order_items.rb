class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.belongs_to :order
      t.belongs_to :food
      t.float :price

      t.timestamps
    end
    add_index :order_items, :order_id
    add_index :order_items, :food_id
  end
end
