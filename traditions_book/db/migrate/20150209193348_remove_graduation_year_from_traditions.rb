class RemoveGraduationYearFromTraditions < ActiveRecord::Migration
  def change
    remove_column :traditions, :graduation_year, :integer
  end
end
