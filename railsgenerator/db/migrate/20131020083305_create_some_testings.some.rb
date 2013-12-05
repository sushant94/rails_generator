# This migration comes from some (originally 20131020083254)
class CreateSomeTestings < ActiveRecord::Migration
  def change
    create_table :some_testings do |t|
      t.string :name

      t.timestamps
    end
  end
end
