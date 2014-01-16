class AddBetMaxToSpins < ActiveRecord::Migration
  def change
    add_column :spins, :bet_max, :string
    add_column :spins, :gems, :integer
    add_column :spins, :level, :integer
    add_column :spins, :coins, :integer
    add_column :spins, :win_ratio, :integer
    add_column :spins, :spin_mode, :string
    add_column :spins, :bet_amount, :integer
    add_column :spins, :bonus, :integer
    add_column :spins, :boost, :integer
  end
end
