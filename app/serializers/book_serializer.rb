class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :etag, :link, :author, :img, :page, :notes, :reviews, :book_users

  has_many :notes 
  has_many :reviews
  has_many :book_users 
end

