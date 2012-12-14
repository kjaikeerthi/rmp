class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :grand_price

      t.timestamps
    end
  end
end
