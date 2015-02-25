class CreateTraditions < ActiveRecord::Migration
  def change
    create_table :traditions do |t|
      t.string :name
      t.integer :ranking
      t.string :picture
      t.string :poster
      t.boolean :approved

      t.timestamps
    end
  end
end
