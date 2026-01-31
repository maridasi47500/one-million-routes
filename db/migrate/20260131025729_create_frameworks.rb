class CreateFrameworks < ActiveRecord::Migration[8.0]
  def change
    create_table :frameworks do |t|
      t.string :name
      t.string :mycode
      t.string :mylogincode
      t.string :myroutecode

      t.timestamps
    end
  end
end
