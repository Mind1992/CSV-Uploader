class ChangeColumnsNames < ActiveRecord::Migration
  def change
    rename_column :purchases, "purchaser name", :purchaser_name
    rename_column :purchases, "item description", :item_description
    rename_column :purchases, "item price", :item_price
    rename_column :purchases, "purchase count", :purchase_count
    rename_column :purchases, "merchant address", :merchant_address
    rename_column :purchases, "merchant name", :merchant_name
  end
end
