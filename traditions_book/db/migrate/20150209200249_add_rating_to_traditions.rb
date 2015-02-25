class AddRatingToTraditions < ActiveRecord::Migration
  def change
    add_column :traditions, :rating, :integer
  end
end
