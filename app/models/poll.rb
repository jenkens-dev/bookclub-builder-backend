class Poll < ApplicationRecord
    has_many :poll_options
    belongs_to :bookclub
end
