class CreateMod < ActiveRecord::Migration
  def change
    create_table :little_light_7568_mod do |t|
      t.string :name
      t.timestamps
    end
  end
end
