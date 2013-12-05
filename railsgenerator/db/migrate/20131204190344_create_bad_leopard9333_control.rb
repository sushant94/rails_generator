class CreateBadLeopard9333Control < ActiveRecord::Migration
  def change
    create_table :bad_leopard9333_controls do |t|
      t.string :name
    end
  end
end
