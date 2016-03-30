def reverser
  if yield.include?(' ')
    words = yield.split
    words.each {|x| x.reverse!}
    words.join(' ')
  else
    yield.reverse!
  end
end

def adder(digit = 1)
  yield + digit
end

def repeater(executor = 1)
  executor.times {yield}
end
