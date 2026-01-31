class CreateMyroutes < ActiveRecord::Migration[8.0]
  def change
    create_table :myroutes do |t|
      t.integer :myprogram_id
      t.string :title
      t.string :description
      t.string :myurl

      t.timestamps
    end
  end
end
