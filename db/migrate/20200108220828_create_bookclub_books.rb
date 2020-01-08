class CreateBookclubBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookclub_books do |t|
      t.integer :bookclub_id
      t.integer :book_id
      t.boolean :is_completed

      t.timestamps
    end
  end
end
