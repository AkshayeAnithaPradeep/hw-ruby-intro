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
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

print starts_with_consonant?('000')