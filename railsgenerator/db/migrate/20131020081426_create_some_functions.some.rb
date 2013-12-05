# This migration comes from some (originally 20131020072742)
class CreateSomeFunctions < ActiveRecord::Migration
  def change
    create_table :some_functions do |t|
      t.string :name
      t.integer :controller_id

      t.timestamps
    end
  end
end
