class ChangeFileNameToFileIdInPurchases < ActiveRecord::Migration
  def change
    rename_column :purchases, :file_name, :file_id
  end
end
