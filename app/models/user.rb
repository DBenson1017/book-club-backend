class User < ApplicationRecord
    has_many :book_users
    has_many :notes 
    has_many :reviews
    has_many :books, through: :book_users  
    
end
