def translate(string)
  vowels = ['a', 'e', 'i', 'o', 'u']
  words = string.split
  pig_latin = []

  words.each do |x|
    if vowels.include? x.slice(0).downcase
      pig_latin.push(x + 'ay')
    elsif x.slice(0..1) == 'qu'
      pig_latin.push(x.slice(2..-1) + x.slice(0..1) + 'ay')
    elsif x.slice(0..2).include? 'qu'
      pig_latin.push(x.slice(3..-1) + x.slice(0..2) + 'ay')
    elsif (not vowels.include? x.slice(0)) && (not vowels.include? x.slice(1)) && (not vowels.include? x.slice(2))
      pig_latin.push(x.slice(3..-1) + x.slice(0..2) + 'ay')
    elsif (not vowels.include? x.slice(0)) && (not vowels.include? x.slice(1))
      pig_latin.push(x.slice(2..-1) + x.slice(0..1) + 'ay')
    else
      pig_latin.push(x.slice(1..-1) + x.slice(0) + 'ay')
    end
  end
  pig_latin.join(' ')
end
