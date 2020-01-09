class User < ApplicationRecord
    has_many :bookclub_users
    has_many :bookclubs, through: :bookclub_users
    has_secure_password
    validates :username, uniqueness: true
end
