class CreateControl < ActiveRecord::Migration
  def change
    create_table :little_light_7568_control do |t|
      t.string :name
      t.timestamps
    end
  end
end
