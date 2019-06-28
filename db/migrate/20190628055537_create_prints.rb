class CreatePrints < ActiveRecord::Migration[5.2]
  def change
    create_table :prints do |t|
      t.string :name
      t.string :material
      t.boolean :isFinished
      t.references :printer, foreign_key: true

      t.timestamps
    end
  end
end
