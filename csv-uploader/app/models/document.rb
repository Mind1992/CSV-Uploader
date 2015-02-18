class Document < ActiveRecord::Base
  has_many :purchases

  def gross_revenue_by_document
    total = 0
    self.purchases.each do |purchase|
      total += (purchase.item_price * purchase.purchase_count)
    end
    total
  end
end
