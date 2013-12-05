class CreateBadLeopard9333Rout < ActiveRecord::Migration
  def change
    create_table :bad_leopard9333_routs do |t|
      t.string :path_name
      t.string :path_source
      t.string :req_type
    end
  end
end
