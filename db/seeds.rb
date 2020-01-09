# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = HTTParty.get('https://www.googleapis.com/books/v1/volumes?q=inauthor:sanderson&key=AIzaSyA39gVxErny8CXc27ySrZefMllAWF_det4')["items"]

response.each do |book|
    Book.create(title: book["volumeInfo"]["title"], author: book["volumeInfo"]["authors"][0], description: book["volumeInfo"]["description"], thumbnail: book["volumeInfo"]["imageLinks"]["smallThumbnail"])
end

meUser = User.create(username: 'jw', password: 'pass', profile_picture: 'https://i.imgur.com/VfFU5d8.jpg')

bookclub = Bookclub.create(name: 'Brandon Sanderson Fan Club', description: 'We love to fantasy books especially those by Brandon Sanderson', picture: 'https://i.imgur.com/HDnnVV9.jpg')

bookclub_user = BookclubUser.create(bookclub_id: bookclub.id, user_id: meUser.id, is_admin: meUser.id)

bookclub_book = BookclubBook.create(bookclub_id: bookclub.id, book_id: Book.first.id, is_completed: false)
bookclub_book = BookclubBook.create(bookclub_id: bookclub.id, book_id: Book.last.id, is_completed: true)