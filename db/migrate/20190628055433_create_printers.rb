class CreatePrinters < ActiveRecord::Migration[5.2]
  def change
    create_table :printers do |t|
      t.string :name
      t.boolean :isPrinting

      t.timestamps
    end
  end
end
