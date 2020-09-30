def fib(index)
  first, last = [1, 1]
  loop do 
    first, last = [last, first + last]
    break if first >= index
  end
  first
end

def select_if_index_is_fib(array)
  result = []
  array.each_with_index do |element, index|
    if fib(index) == index
      result << element
    end
  end
  result
end


array = [3, 4, 5, 6, 7, 8, 9, 12, 23, 45, 67, 89, 21, 34, 3, 4, 5, 4, 3, 2, 1, 4, 5, 6]

p select_if_index_is_fib([2, 3, 4, 5, 6, 7, 8, 9])
p select_if_index_is_fib(array) # [4, 5, 6, 8, 23, 34, 4]
#                        indexes: [1, 2, 3, 5, 8, 13, 21] (fibonacci numbers)
