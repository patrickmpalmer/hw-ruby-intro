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
  # YOUR CODE HERE
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
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end


class String #https://stackoverflow.com/questions/2730854/ruby-how-to-get-the-first-character-of-a-string
  def initial
    self[0,1]
  end
end

def letter?(lookAhead) #https://stackoverflow.com/questions/14551256/ruby-how-to-find-out-if-a-character-is-a-letter-or-a-digit
  lookAhead =~ /[A-Za-z]/
end