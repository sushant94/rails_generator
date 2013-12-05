class CreateWallPlant6020Control < ActiveRecord::Migration
  def change
    create_table :wall_plant6020_controls do |t|
      t.string :name
    end
  end
end
