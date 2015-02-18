class Purchase < ActiveRecord::Base
  belongs_to :document

  def self.import(file)
    results = SmarterCSV.process(file.path)
    Document.create!({:document_name => file.original_filename})
    Document.all.last.purchases << (Purchase.create!(results))
  end
end
