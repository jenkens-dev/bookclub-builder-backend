class Bookclub < ApplicationRecord
    has_many :users
    has_many :bookclub_books
    has_many :books, through: :bookclub_books
end
