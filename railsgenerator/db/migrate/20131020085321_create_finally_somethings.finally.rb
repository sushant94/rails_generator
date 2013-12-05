# This migration comes from finally (originally 20131020085309)
class CreateFinallySomethings < ActiveRecord::Migration
  def change
    create_table :finally_somethings do |t|
      t.string :name

      t.timestamps
    end
  end
end
