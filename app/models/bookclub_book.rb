class BookclubBook < ApplicationRecord
    belongs_to :book 
    belongs_to :bookclub
end
