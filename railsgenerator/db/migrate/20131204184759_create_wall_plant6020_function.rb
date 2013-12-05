class CreateWallPlant6020Function < ActiveRecord::Migration
  def change
    create_table :wall_plant6020_functions do |t|
      t.string :name
      t.integer :control_id
    end
  end
end
