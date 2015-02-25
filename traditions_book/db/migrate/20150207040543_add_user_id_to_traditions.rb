class AddUserIdToTraditions < ActiveRecord::Migration
  def change
    add_column :traditions, :user_id, :integer
  end
end
