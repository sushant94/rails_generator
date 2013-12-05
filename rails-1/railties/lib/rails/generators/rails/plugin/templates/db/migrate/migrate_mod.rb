class CreateMod < ActiveRecord::Migration
  def change
    create_table :<%= name %>_mod do |t|
      t.string :name
      t.timestamps
    end
  end
end
