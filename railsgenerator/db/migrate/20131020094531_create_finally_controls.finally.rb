# This migration comes from finally (originally 20131020094446)
class CreateFinallyControls < ActiveRecord::Migration
  def change
    create_table :finally_controls do |t|
      t.string :name

      t.timestamps
    end
  end
end
