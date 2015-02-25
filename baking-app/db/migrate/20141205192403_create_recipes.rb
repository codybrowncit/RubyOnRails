class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :baker_id
      t.date :date_added

      t.timestamps
    end
  end
end
