# require 'date'

# #puts Date.new
# puts Date.new(2016)
# puts Date.new(2016, 5)

a = %w(a b c d e f g h)
# p a
# puts a.fetch(7, 'beats me')
# puts a.fetch(7) { |i| i**2 }
## returns '49' if index 7 does not exist, if it does,
## returns element at 7 , 'h'

# 5.step(to: 10, by: 3) { |val| puts val }
## other ex in docs

p 1.step.take(4) #  [1, 2, 3, 4]
p 10.step(by: -1).take(4)  # [10, 9, 8, 7]
1.step(10, 2) {|i| print i, " " }  # 1 3 5 7 9





