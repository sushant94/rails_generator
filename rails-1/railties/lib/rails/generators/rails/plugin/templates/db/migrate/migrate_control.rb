class CreateControl < ActiveRecord::Migration
  def change
    create_table :<%= name %>_control do |t|
      t.string :name
      t.timestamps
    end
  end
end
