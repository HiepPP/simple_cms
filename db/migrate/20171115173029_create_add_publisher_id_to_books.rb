class CreateAddPublisherIdToBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :add_publisher_id_to_books do |t|
      t.string :publisher_id

      t.timestamps
    end
  end
end
