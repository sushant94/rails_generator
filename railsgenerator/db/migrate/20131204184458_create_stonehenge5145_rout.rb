class CreateStonehenge5145Rout < ActiveRecord::Migration
  def change
    create_table :stonehenge5145_routs do |t|
      t.string :path_name
      t.string :path_source
      t.string :req_type
    end
  end
end
