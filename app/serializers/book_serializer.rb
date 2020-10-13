class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :etag, :link, :author, :img, :page, :notes, :reviews

  has_many :notes 
  has_many :reviews 
end

