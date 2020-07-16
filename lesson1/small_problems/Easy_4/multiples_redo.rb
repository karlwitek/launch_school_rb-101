def multiples(number)
  array_numbers = Array(1..number)
  array_multiples = []
  array_numbers.each do |num|
    if num % 3 == 0 || num % 5 == 0
      array_multiples << num
    end
  end
  p array_multiples
  puts array_multiples.sum
end

multiples(20)

# Another solution (me)

def multiples2(number)
  sum = 0
  #(1..number).each do |num|
  1.upto(number) do |num|
    if num % 3 == 0 || num % 5 == 0
      sum += num
    end
  end
  sum
end

puts '==============='
puts multiples2(20)

# calling .each on a range, works!
# 1.upto(number) do |num|  works.

# LS ->

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

puts multisum(20)

