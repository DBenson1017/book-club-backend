class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :username, :user_reviews, :user_notes 

  has_many :books 

  def user_reviews 
    object.reviews.map {|review| {book_title: review.book_title, book_id: review.book_id, stars: review.star_rating, content: review.review_content} }
  end 

  def user_notes 
    object.notes.map {|note| {book_title: note.book_title, book_id: note.book_id, note: note.note_content}}
  end 

end
