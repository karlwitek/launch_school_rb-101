# Remove people with age 100 or greater from the hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.delete_if do |_, age|
#   age >= 100
# end

# p ages
# works.  try another solution
# h = ages.map do |name, age|
#   if age >= 100 
#     ages.delete(name)
#     ages.delete(age)
#   else
#     ages[name] = age
#   end
# end

# not correct lines 10 - 18
# ages.delete 
#   if age >= 100
#     ages.delete(name)
#   end
# end
# p ages
# not correct.. LS -->

# ages.keep_if { |_, age| age < 100 }

# p ages
# could also use .select! here.  Docs tell us that Hash#select! is 
# equivalent to Hash#keep_if, but returns nil if no changes were made. 
# In this case, would not have made any difference.

# ages.select! { |_, age| age < 100 }

# p ages
# my solution on one line
ages.delete_if { |_, age| age >= 100 }
p ages

# works
