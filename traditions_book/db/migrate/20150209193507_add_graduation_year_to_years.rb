class AddGraduationYearToYears < ActiveRecord::Migration
  def change
    add_column :users, :graduation_year, :integer
  end
end
