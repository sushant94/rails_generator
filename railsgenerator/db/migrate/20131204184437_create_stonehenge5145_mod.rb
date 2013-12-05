class CreateStonehenge5145Mod < ActiveRecord::Migration
  def change
    create_table :stonehenge5145_mods do |t|
      t.string :name
    end
  end
end
