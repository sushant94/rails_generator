class CreateDisturbedEquilibrium1772Function < ActiveRecord::Migration
  def change
    create_table :disturbed_equilibrium1772_functions do |t|
      t.string :name
      t.integer :control_id
    end
  end
end
