class RemoveGraduationDateFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :graduation_date, :date
  end
end
