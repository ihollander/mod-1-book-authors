require 'pry'
require_relative './book'
require_relative './author'

a1 = Author.new("author1")
a2 = Author.new("author2")
a3 = Author.new("author3")

a1.write_book("book1", 5000)
a1.write_book("book2", 6000)
a1.write_book("book3", 7000)

a2.write_book("book4", 1000)
a2.write_book("book5", 2000)
a2.write_book("book6", 3000)

a3.write_book("book7", 1000)
a3.write_book("book8", 2000)

binding.pry
"bye"

