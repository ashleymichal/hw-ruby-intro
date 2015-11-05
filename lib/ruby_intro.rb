# Part 1

def sum arr
  arr.inject(0) { |sum, number| sum + number }
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort!
  arr.pop + arr.pop
end

def sum_to_n? arr, n
  arr.permutation(2).each do |pair|
    return true if sum(pair) == n
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s[0] =~ /[^aeiouAEIOU]/ && s[0] =~ /\w/
end

def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    # calculate the binary number
    digits = s.chars
    place = 1
    sum = 0
    until digits.empty?
      number = digits.pop.to_i
      sum += number * place
      place *= 2
    end
    sum % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    raise ArgumentError if isbn == '' || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
     "$%.2f" % [@price]
  end
end
