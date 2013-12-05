# This migration comes from finally (originally 20131020094630)
class CreateFinallyMethods < ActiveRecord::Migration
  def change
    create_table :finally_methods do |t|
      t.string :name
      t.integer :control_id

      t.timestamps
    end
  end
end
