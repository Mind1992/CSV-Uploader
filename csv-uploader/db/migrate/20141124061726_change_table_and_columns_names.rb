class ChangeTableAndColumnsNames < ActiveRecord::Migration
  def change
    rename_column :files, :file_name, :document_name
    rename_column :purchases, :file_id, :document_id
    rename_table :files, :documents
  end
end
