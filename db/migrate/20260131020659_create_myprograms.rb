class CreateMyprograms < ActiveRecord::Migration[8.0]
  def change
    create_table :myprograms do |t|
      t.integer :framework_id
      t.string :title
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
