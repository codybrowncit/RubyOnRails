class AddGraduationYearToTraditions < ActiveRecord::Migration
  def change
    add_column :traditions, :graduation_year, :integer
  end
end
