class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :category_id
      t.integer :publisher_id
      t.string :isbn
      t.string :year

      t.timestamps
    end
  end
end
