class AddInfoToSpins < ActiveRecord::Migration
  def change
    add_column :spins, :timestamp, :string
    add_column :spins, :session_index, :integer
    add_column :spins, :event, :string
    add_column :spins, :description, :string
    add_column :spins, :version, :string
    add_column :spins, :platform, :string
    add_column :spins, :device, :string
    add_column :spins, :userid, :string
    add_column :spins, :params, :string
  end
end
