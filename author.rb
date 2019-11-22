class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  def write_book(title, word_count)
    Book.new(title, self, word_count)
  end

  def total_words
    # 1. map over all the author's books and get the word count
    word_counts = self.books.map do |book|
      book.word_count
    end

    # 2. get the sum of all the word counts in the array
    # .sum will add all numbers in an array and return the total
    # [1,2,3].sum => 6
    word_counts.sum
  end

  def self.all
    @@all
  end

  def self.most_words
    # (Option 1) sort the authors by their total words
    sorted_authors = Author.all.sort_by do |author|
      author.total_words
    end
    # this will return an array with the author with the highest word count at the end
    # so we can take the last element from the array and return it
    sorted_authors.last
    
    # (Option 2) max_by will also give you this
    # Author.all.max_by do |author|
    #   author.total_words
    # end
  end
end