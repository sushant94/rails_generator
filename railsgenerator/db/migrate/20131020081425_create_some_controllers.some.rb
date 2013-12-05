# This migration comes from some (originally 20131020072711)
class CreateSomeControllers < ActiveRecord::Migration
  def change
    create_table :some_controllers do |t|
      t.string :name

      t.timestamps
    end
  end
end
