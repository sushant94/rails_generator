class CreateWallPlant6020Mod < ActiveRecord::Migration
  def change
    create_table :wall_plant6020_mods do |t|
      t.string :name
    end
  end
end
