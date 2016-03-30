class Book
  attr_accessor :title

  def title
    little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on","over", "to", "up", "and", "as", "but", "it", "or", "and", "not"]
    book_title = @title.split(" ").map { |x| little_words.include?(x) || x.to_i != 0 ? x : x.capitalize! }
    book_title[0].capitalize!
    book_title.join(" ")
  end

end
