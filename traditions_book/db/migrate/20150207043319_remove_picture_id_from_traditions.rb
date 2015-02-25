class RemovePictureIdFromTraditions < ActiveRecord::Migration
  def change
    remove_column :traditions, :picture_id, :integer
  end
end
