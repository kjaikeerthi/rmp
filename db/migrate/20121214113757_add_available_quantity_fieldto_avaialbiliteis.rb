class AddAvailableQuantityFieldtoAvaialbiliteis < ActiveRecord::Migration
  def up
    add_column(:availabilities, :current_availabilities, :integer)
    add_column(:availabilities, :current_day, :datetime)
  end

  def down
    remove_column(:availabilities, :current_availabilities)
    remove_column(:availabilities, :current_day)
	
  end
end
