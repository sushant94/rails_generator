class CreateWallPlant6020Rout < ActiveRecord::Migration
  def change
    create_table :wall_plant6020_routs do |t|
      t.string :path_name
      t.string :path_source
      t.string :req_type
    end
  end
end
