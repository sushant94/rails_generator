class CreateStonehenge5145Control < ActiveRecord::Migration
  def change
    create_table :stonehenge5145_controls do |t|
      t.string :name
    end
  end
end
