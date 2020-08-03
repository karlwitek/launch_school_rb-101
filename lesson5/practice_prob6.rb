# One of the most frequently used string properties is
# 'String substitution' where we take a hard coded string and
# modify it with various parameters from out program.
# Print out the name, age and gender of each family member

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, value|
  puts "#{name} is a #{value['age']}-year-old #{value['gender']}."
end
# works. LS -->

munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']} year old #{details['gender']}"
end
# Need to access both the key and the value.  Use Hash#each_pair or Hash#each
# with two block parameters.
# Look up .each_pair


