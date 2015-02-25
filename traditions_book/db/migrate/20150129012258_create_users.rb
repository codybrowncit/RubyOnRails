class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :graduation_date
      t.string :major
      t.string :email
      t.string :gender

      t.timestamps
    end
  end
end
