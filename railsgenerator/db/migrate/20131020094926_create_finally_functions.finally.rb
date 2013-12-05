# This migration comes from finally (originally 20131020094757)
class CreateFinallyFunctions < ActiveRecord::Migration
  def change
    create_table :finally_functions do |t|
      t.string :name
      t.integer :control_id

      t.timestamps
    end
  end
end
