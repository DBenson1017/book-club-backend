# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all()

User.create(first_name: 'Devin', last_name: 'Benson', email: 'devinbenson@gmail.com', username: 'dbenson', password_digest: 'test')
User.create(first_name: 'Spencer', last_name: 'Benson', email: 'sbenson@gmail.com', username: 'sbenson', password_digest: 'test')
User.create(first_name: 'Emily', last_name: 'Benson', email: 'ebenson@gmail.com', username: 'ebenson', password_digest: 'test')
User.create(first_name: 'Megan', last_name: 'Benson', email: 'mbenson@gmail.com', username: 'mbenson', password_digest: 'test')
User.create(first_name: 'Sarah', last_name: 'Garner', email: 'sg@gmail.com', username: 'sgarner', password_digest: 'test')
User.create(first_name: 'Martin', last_name: 'Morales', email: 'martyparty@gmail.com', username: 'mmoralez', password_digest: 'test')

BookUser.create(book_id: 1, user_id: 3)
BookUser.create(book_id: 2, user_id: 3)
BookUser.create(book_id: 3, user_id: 3)
BookUser.create(book_id: 5, user_id: 3)

Note.create(book_id: 1, user_id: 3, note_content: 'test content string')
Note.create(book_id: 2, user_id: 3, note_content: 'test content string')
Note.create(book_id: 3, user_id: 3, note_content: 'test content string')
Note.create(book_id: 5, user_id: 3, note_content: 'test content string')

Review.create(book_id: 1, user_id: 3, star_rating: '5', review_content: 'review content test string')
Review.create(book_id: 2, user_id: 3, star_rating: '5', review_content: 'review content test string')
Review.create(book_id: 3, user_id: 3, star_rating: '5', review_content: 'review content test string')


