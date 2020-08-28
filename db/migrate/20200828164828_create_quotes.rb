class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.string :quote
      t.string :character

      t.timestamps
    end
    add_index :quotes, :quote
    add_index :quotes, :character
  end
end
