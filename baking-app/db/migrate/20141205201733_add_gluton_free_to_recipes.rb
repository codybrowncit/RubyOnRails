class AddGlutonFreeToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :gluton_free, :boolean
  end
end
