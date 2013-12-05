class CreateDisturbedEquilibrium1772Mod < ActiveRecord::Migration
  def change
    create_table :disturbed_equilibrium1772_mods do |t|
      t.string :name
    end
  end
end
