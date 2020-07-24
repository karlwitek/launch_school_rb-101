# add up all of the ages from the Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
         "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# sum = 0
# ages.map do |key, value|
#   sum += value
# end
# puts sum
# works. probably better to use .each
# ages.each do |key, value|
#   sum += value
# end

# puts sum
# works.  LS -->

# total_ages = 0
# ages.each { |_, age| total_ages += age}

# puts total_ages
# Another solution: (Enumberable#inject)

puts ages.values.inject(:+)


