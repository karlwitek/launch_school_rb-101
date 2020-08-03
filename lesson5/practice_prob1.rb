# order this array of number strings by descending numeric value:

arr = ['10', '11', '9', '7', '8']

# p arr.sort_by { |str| str.to_i } # ascending numeric value

new_arr = arr.map { |str| str.to_i }.sort { |a, b| b <=> a }

# sorts (descending order), returns integers, not strings

p new_arr.map { |int| int.to_s } # correct output.. LS -->


b = arr.sort do |a, b|
      b.to_i <=> a.to_i
    end

p b
# added 'b' to store return value of .sort and output



