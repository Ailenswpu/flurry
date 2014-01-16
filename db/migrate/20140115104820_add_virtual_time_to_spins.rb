class AddVirtualTimeToSpins < ActiveRecord::Migration
  def change
    add_column :spins, :virtual_time, :integer
  end
end
