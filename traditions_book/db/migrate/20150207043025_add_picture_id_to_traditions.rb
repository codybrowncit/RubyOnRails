class AddPictureIdToTraditions < ActiveRecord::Migration
  def change
    add_column :traditions, :picture_id, :intenger
  end
end
