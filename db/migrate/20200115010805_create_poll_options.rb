class CreatePollOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_options do |t|
      t.integer :google_book_id
      t.integer :poll_id
      t.integer :votes
      t.timestamps
    end
  end
end
