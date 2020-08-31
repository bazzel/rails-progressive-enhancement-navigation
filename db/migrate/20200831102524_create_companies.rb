class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :catch_phrase
      t.string :logo

      t.timestamps
    end
    add_index :companies, :name
    add_index :companies, :catch_phrase
  end
end
