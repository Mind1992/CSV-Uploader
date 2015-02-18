class ChangeFileIdToIntegerType < ActiveRecord::Migration
  def change
    remove_column :purchases, :file_id, :string
    add_column :purchases, :file_id, :integer
  end
end
