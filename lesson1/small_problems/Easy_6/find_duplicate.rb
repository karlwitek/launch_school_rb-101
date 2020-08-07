# Given an unordered array and the information that exactly one value in the array occurs
# twice (every other value occurs exactly once), how would you determine which value occurs
# twice?  Write a method that will find and return the duplicate value that is known
# to be in the array.

a = [1, 2, 3, 4, 5, 2]

def find_duplicate(array)
  loop do
    element = array.shift
    if array.include?(element)
      return element
    else
      array << element
    end
  end
end

puts find_duplicate(a)
# 2

arr = ([18, 9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58])

puts find_duplicate(arr)
#  73


# Works!  Note: explicit return also breaks out of the loop.  element by itself causes
# infinite loop.  Could include break after 'return element' but not needed.
# LS -->

def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end

puts find_dup([2, 3, 4, 5, 7, 8, 3]) # 3

# Used Enumerable#find to look through each item in our array.  If that item meets some
# condition we return it.  In this case, the condition we check is that the item occurs
# twice.  This bit of code will allow us to find the duplicate element regardless of the
# size of the array.  


