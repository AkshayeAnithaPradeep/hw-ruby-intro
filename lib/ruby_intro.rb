# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {
    |x|
    sum += x
  }
  return sum
end

def max_2_sum arr
  sum = 0
  length = arr.length
  if length >1
    arr = arr.sort.reverse
    sum = arr[0] + arr[1]
  elsif length == 1
    sum = arr[0]
  end
  return sum
end

def sum_to_n? arr, n
  for x in 0...arr.length do
    for y in 0...arr.length do
      if x != y
        if (arr[x] + arr[y]) == n
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  consonants = ['A', 'E', 'i', 'o', 'U', 'a', 'e', 'i', 'o', 'u']
  isletter = s[0] =~ /[A-Za-z]/
  if !isletter or consonants.include? s[0]
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  sum = 0
  s = s.split('')
  s.each do |x|
    if ['0', '1'].include? x
      val = x.to_i
      sum = sum*2 + val
    else
      return false
    end
  end
  if sum % 4 == 0 && s.length != 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    unless(isbn != '' && price > 0)
      raise ArgumentError.new("Invalid input")
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string()
    price = '%.2f' % @price
    return "$#{price}"
  end
end