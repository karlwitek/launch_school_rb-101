# Turn this array into a hash where the names are the keys and
# the values are the positions in the array.

flintstones = ['Fred', 'Barney', 'Wilma', 'Betty', 'Pebbles', 'BamBam']

# index = 0
# h = flintstones.each_with_object({}) do |element, hash|
#   hash[element] = index
#   index += 1
# end
# p h
# works. try another solution
# hash = {}
# flintstones.each_with_index do |element, index|
#   hash[element] = index
# end

# p hash
# works also.  LS -->
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash

