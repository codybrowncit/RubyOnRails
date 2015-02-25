class RemovePosterFromTraditions < ActiveRecord::Migration
  def change
    remove_column :traditions, :poster, :string
  end
end
