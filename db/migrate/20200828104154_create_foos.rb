class CreateFoos < ActiveRecord::Migration[6.0]
  def change
    create_table :foos do |t|
      t.string :foo
      t.string :bar

      t.timestamps
    end
    add_index :foos, :foo
    add_index :foos, :bar
  end
end
