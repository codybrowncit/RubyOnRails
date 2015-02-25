class RemoveGraduationDateFromTraditions < ActiveRecord::Migration
  def change
    remove_column :traditions, :graduation_date, :date
  end
end
