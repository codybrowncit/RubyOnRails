class RemoveRatingFromTraditions < ActiveRecord::Migration
  def change
    remove_column :traditions, :rating, :decimal
  end
end
