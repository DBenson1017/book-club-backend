class Book < ApplicationRecord
    has_many :book_users
    has_many :notes 
    has_many :reviews
    has_many :users, through: :book_users  

    validates :etag, :uniqueness => true
end
