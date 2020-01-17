class Bookclub < ApplicationRecord
    has_many :bookclub_users
    has_many :users, through: :bookclub_users
    has_many :bookclub_books
    has_many :books, through: :bookclub_books
    has_many :polls

    def get_active_poll
        self.polls.filter do |poll|
            poll.active
        end
    end
end
