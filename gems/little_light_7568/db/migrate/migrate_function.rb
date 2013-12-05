class CreateFunction < ActiveRecord::Migration
  def change
    create_table :little_light_7568_function do |t|
      t.string :name
      t.integer :control_id
      t.timestamps
    end
  end
end
