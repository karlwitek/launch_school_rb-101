# Pick out the minimum age from the hash:

ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22, 
  "Spot" => 237
}

min_age = 0
ages.each do |name, age|
  current_age = age
  if min_age == 0
    min_age = current_age
  elsif min_age > current_age
    min_age = current_age
  end
end

puts min_age
# works . LS -->

puts ages.values.min
