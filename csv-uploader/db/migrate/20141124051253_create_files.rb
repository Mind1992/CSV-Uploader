class CreateFiles < ActiveRecord::Migration
  def change
    create_table :files do |t|
      t.string :file_name
    end
  end
end
