class CreateStonehenge5145Function < ActiveRecord::Migration
  def change
    create_table :stonehenge5145_functions do |t|
      t.string :name
      t.integer :control_id
    end
  end
end
