class CreateAddAuthorIdToBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :add_author_id_to_books do |t|
      t.string :author_id

      t.timestamps
    end
  end
end
