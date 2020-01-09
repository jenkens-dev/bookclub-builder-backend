class Bookclub < ApplicationRecord
    has_many :bookclub_users
    has_many :users, through: :bookclub_users
    has_many :bookclub_books
    has_many :books, through: :bookclub_books
end
