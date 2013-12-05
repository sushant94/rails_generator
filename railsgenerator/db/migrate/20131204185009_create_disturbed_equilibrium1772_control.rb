class CreateDisturbedEquilibrium1772Control < ActiveRecord::Migration
  def change
    create_table :disturbed_equilibrium1772_controls do |t|
      t.string :name
    end
  end
end
