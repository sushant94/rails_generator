class CreateFunction < ActiveRecord::Migration
  def change
    create_table :<%= name %>_function do |t|
      t.string :name
      t.integer :control_id
      t.timestamps
    end
  end
end
