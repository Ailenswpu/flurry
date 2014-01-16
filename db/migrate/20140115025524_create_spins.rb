class CreateSpins < ActiveRecord::Migration
  def change
    create_table :spins do |t|
      t.timestamps
    end
  end
end
