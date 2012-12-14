class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.belongs_to :food
      t.integer :quantity

      t.timestamps
    end
    add_index :availabilities, :food_id
  end
end
