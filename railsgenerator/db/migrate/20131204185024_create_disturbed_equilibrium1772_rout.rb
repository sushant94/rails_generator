class CreateDisturbedEquilibrium1772Rout < ActiveRecord::Migration
  def change
    create_table :disturbed_equilibrium1772_routs do |t|
      t.string :path_name
      t.string :path_source
      t.string :req_type
    end
  end
end
