class CreateBadLeopard9333Function < ActiveRecord::Migration
  def change
    create_table :bad_leopard9333_functions do |t|
      t.string :name
      t.integer :control_id
    end
  end
end
