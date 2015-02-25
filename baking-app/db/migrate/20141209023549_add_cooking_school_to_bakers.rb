class AddCookingSchoolToBakers < ActiveRecord::Migration
  def change
    add_column :bakers, :cooking_school, :boolean
  end
end
