class CreateBookclubUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :bookclub_users do |t|
      t.integer :bookclub_id
      t.integer :user_id
      t.integer :is_admin
      t.timestamps
    end
  end
end
