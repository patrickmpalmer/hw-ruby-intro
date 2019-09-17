# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  arr = arr.sort { |a, b| b <=> a } #https://mixandgo.com/learn/ruby-sort-and-sort-by
  if arr.length >= 2
    return arr[0] + arr[1]
  elsif arr.length == 1
    return arr[0]
  else
    return 0
  end
end

def sum_to_n? arr, n
  # greedy algo time
  if arr.length == 0 || arr.length == 1
    return false
  end
  arr.each do |num|
    arr.each do |num2|
      if num == num2
        break
      end
      testnum = num + num2
      if testnum == n
        #print "num: ", num, " num2: ", num2, " testnum: ", testnum, "\n"
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  string = "Hello, " + name
  return string
end 

def starts_with_consonant? s
  vowels = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']
  if s.empty?
    return false
  elsif
    !letter? s.initial
    return false
  end
  if vowels.include? s.initial
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  binary = is_binary(s)
  if !binary 
    return false
  else 
    num = s.to_i(2)
    if num%4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price #https://dev.to/k_penguin_sato/ruby-getters-and-setters-1p30
  
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN must have data") if isbn.empty?
    raise ArgumentError.new("Price must be positive") if price <= 0
    @isbn = isbn
    @price = price
  end

  def isbn #getter method
    @isbn
  end

  def price 
    @price
  end

  def price_as_string
    string = "$" + ('%.2f' % @price).to_s
    return string
  end
end


#---------------------helper functions---------------------
class String #https://stackoverflow.com/questions/2730854/ruby-how-to-get-the-first-character-of-a-string
  def initial
    self[0,1]
  end
end

def letter?(s) #https://stackoverflow.com/questions/14551256/ruby-how-to-find-out-if-a-character-is-a-letter-or-a-digit
  s =~ /[A-Za-z]/
end

def is_binary(s)
  if s.match("^[01]+$")
    return true
  else
    return false
  end
end