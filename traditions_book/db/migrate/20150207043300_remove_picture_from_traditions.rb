class RemovePictureFromTraditions < ActiveRecord::Migration
  def change
    remove_column :traditions, :picture, :string
  end
end
