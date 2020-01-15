class CreateBookclubBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookclub_books do |t|
      t.integer :bookclub_id
      t.integer :google_book_id
      t.boolean :is_completed, :default => false

      t.timestamps
    end
  end
end
