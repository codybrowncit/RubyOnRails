class RemoveRankingFromTraditions < ActiveRecord::Migration
  def change
    remove_column :traditions, :ranking, :integer
  end
end
