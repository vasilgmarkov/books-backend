# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
author_a = Author.create(name: "JK. Rowling")
author_b = Author.create(name: "Anna Sewell")
author_c = Author.create(name: "John Green")
author_d = Author.create(name: "Andre Agassi")
author_e = Author.create(name: "Jules Verne")
author_f = Author.create(name: "Roald Dahl")

genre_a = Genre.create(name: "Fiction")
genre_b = Genre.create(name: "Classics")
genre_c = Genre.create(name: "Romance")
genre_d = Genre.create(name: "Biographies")
genre_e = Genre.create(name: "Adventure")
genre_f = Genre.create(name: "Children’s books")

book_a = Book.create(title:"The Harry Potter", author: author_a, genre: genre_a)
book_b = Book.create(title:"Black Beauty", author: author_b, genre: genre_b)
book_c = Book.create(title:"Paper Towns", author: author_c, genre: genre_c)
book_d = Book.create(title:"Open", author: author_d, genre: genre_d)
book_e = Book.create(title:"Around the world in 80 days", author: author_e, genre: genre_e)
book_f = Book.create(title:"Charlie and the chocolate factory", author: author_f, genre: genre_f)