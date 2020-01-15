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

jen = User.create(username: 'jw', password: 'pass', profile_picture: 'https://i.imgur.com/VfFU5d8.jpg')
katrina = User.create(username: 'kitty', password: 'pass', profile_picture: 'https://i.imgur.com/VfFU5d8.jpg')
shawn = User.create(username: 'shawn', password: 'pass', profile_picture: 'https://i.imgur.com/VfFU5d8.jpg')
samantha = User.create(username: 'samantha', password: 'pass', profile_picture: 'https://i.imgur.com/VfFU5d8.jpg')
fonzie = User.create(username: 'fonzie', password: 'pass', profile_picture: 'https://i.imgur.com/VfFU5d8.jpg')
matt = User.create(username: 'matt', password: 'pass', profile_picture: 'https://i.imgur.com/VfFU5d8.jpg')

bookclub1 = Bookclub.create(name: 'Brandon Sanderson Fan Club', description: 'We love to fantasy books especially those by Brandon Sanderson', picture: 'https://i.imgur.com/HDnnVV9.jpg')
bookclub2 = Bookclub.create(name: 'The Sword and Laser', description: 'We read fantasy and scifi books', picture: 'https://i.imgur.com/HDnnVV9.jpg')
bookclub3 = Bookclub.create(name: "Oprah's Book Club", description: 'OBC is the interactive, multi-platform reading club bringing passionate readers together to discuss inspiring stories.', picture: 'https://i.imgur.com/HDnnVV9.jpg')
bookclub4 = Bookclub.create(name: 'The Mystery, Crime, and Thriller Group ', description: 'We love to mystery, crime, and thriller books', picture: 'https://i.imgur.com/HDnnVV9.jpg')
bookclub5 = Bookclub.create(name: 'Poetry Club', description: 'Because poetry is awesome', picture: 'https://i.imgur.com/HDnnVV9.jpg')
bookclub6 = Bookclub.create(name: 'Vowels Only', description: 'Consonants? More like... Lame-sonants', picture: 'https://i.imgur.com/HDnnVV9.jpg')
bookclub7 = Bookclub.create(name: 'My Book Club', description: 'This book club is cool', picture: 'https://i.imgur.com/HDnnVV9.jpg')


bookclub_user = BookclubUser.create(bookclub_id: bookclub1.id, user_id: jen.id, is_admin: jen.id)
bookclub_user = BookclubUser.create(bookclub_id: bookclub2.id, user_id: fonzie.id, is_admin: fonzie.id)
bookclub_user = BookclubUser.create(bookclub_id: bookclub3.id, user_id: samantha.id, is_admin: samantha.id)
bookclub_user = BookclubUser.create(bookclub_id: bookclub4.id, user_id: shawn.id, is_admin: shawn.id)
bookclub_user = BookclubUser.create(bookclub_id: bookclub5.id, user_id: jen.id, is_admin: jen.id)
bookclub_user = BookclubUser.create(bookclub_id: bookclub6.id, user_id: shawn.id, is_admin: shawn.id)
bookclub_user = BookclubUser.create(bookclub_id: bookclub7.id, user_id: matt.id, is_admin: matt.id)



# bookclub_book = BookclubBook.create(bookclub_id: bookclub1.id, book_id: Book.first.id, is_completed: false)
# bookclub_book = BookclubBook.create(bookclub_id: bookclub1.id, book_id: Book.last.id, is_completed: true)


# bookclub_book = BookclubBook.create(bookclub_id: bookclub2.id, book_id: Book.first.id, is_completed: false)
# bookclub_book = BookclubBook.create(bookclub_id: bookclub2.id, book_id: Book.last.id, is_completed: true)


# bookclub_book = BookclubBook.create(bookclub_id: bookclub3.id, book_id: Book.first.id, is_completed: false)
# bookclub_book = BookclubBook.create(bookclub_id: bookclub3.id, book_id: Book.last.id, is_completed: true)


# bookclub_book = BookclubBook.create(bookclub_id: bookclub4.id, book_id: Book.first.id, is_completed: false)
# bookclub_book = BookclubBook.create(bookclub_id: bookclub4.id, book_id: Book.last.id, is_completed: true)


# bookclub_book = BookclubBook.create(bookclub_id: bookclub5.id, book_id: Book.first.id, is_completed: false)
# bookclub_book = BookclubBook.create(bookclub_id: bookclub5.id, book_id: Book.last.id, is_completed: true)


# bookclub_book = BookclubBook.create(bookclub_id: bookclub6.id, book_id: Book.first.id, is_completed: false)
# bookclub_book = BookclubBook.create(bookclub_id: bookclub6.id, book_id: Book.last.id, is_completed: true)


# bookclub_book = BookclubBook.create(bookclub_id: bookclub7.id, book_id: Book.first.id, is_completed: false)
# bookclub_book = BookclubBook.create(bookclub_id: bookclub7.id, book_id: Book.last.id, is_completed: true)