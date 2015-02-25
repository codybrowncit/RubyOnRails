class CreateBakers < ActiveRecord::Migration
  def change
    create_table :bakers do |t|
      t.string :name
      t.boolean :gluten_free
      t.integer :zip_code

      t.timestamps
    end
  end
end
