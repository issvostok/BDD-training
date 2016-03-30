def echo(argument)
  argument
end

def shout(argument)
  argument.upcase
end

def repeat(argument, times = 0)
  if times != 0
    rep = (argument + " ") * times
    rep.strip
  else argument + " " + argument
  end
end

def start_of_word(word, letter_num)
  word[0...letter_num]
end

def first_word(words)
  array_of_words = words.split(" ")
  array_of_words[0]
end

def titleize(string)
	little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on","over", "to", "up", "and", "as", "but", "it", "or", "and", "nor"]
	title = string.spllsit.map {|w| little_words.include?(w)? w: w.capitalize!}
	title[0] = title[0].capitalize
	title.join(" ")
end
