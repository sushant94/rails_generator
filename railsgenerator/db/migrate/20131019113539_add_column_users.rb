class AddColumnUsers < ActiveRecord::Migration
  def change
    add_column :users,:email,:string
    add_column :users,:DOB,:timestamp
  end
end
