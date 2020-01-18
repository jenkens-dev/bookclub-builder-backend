class ChangingGoogleBookIdType < ActiveRecord::Migration[6.0]
  def change
    change_column :poll_options, :google_book_id, :string
  end
end
