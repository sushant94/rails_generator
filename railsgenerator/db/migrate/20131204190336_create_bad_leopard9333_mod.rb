class CreateBadLeopard9333Mod < ActiveRecord::Migration
  def change
    create_table :bad_leopard9333_mods do |t|
      t.string :name
    end
  end
end
