class AddRankingToTraditions < ActiveRecord::Migration
  def change
    add_column :traditions, :ranking, :integer
  end
end
