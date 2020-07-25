# Given the hash (munsters), modify the hash such that each
# member of the family has an addtional 'age_group' key that
# has one of three values (kid, adult, senior)

munsters = {
  'Herman' => { 'age' => 32, 'gender' => 'male' },
  'Lily' => { 'age' => 30, 'gender' => 'female' },
  'Grandpa' => { 'age' => 402, 'gender' => 'male' },
  'Eddie' => { 'age' => 10, 'gender' => 'male' },
  'Marilyn' => { 'age' => 23, 'gender' => 'female' }
}

# m = munsters.map do |key, value|
#   num = value['age']
#   if num.between?(0, 17)
#     munsters[key]['age_group'] = 'kid'
#   elsif num.between?(18, 64)
#     munsters[key]['age_group'] = 'adult'
#   else
#     value['age_group'] = 'senior'
#   end
# end
# p m
# NOT working... LS -->

munsters.each do |name, details|
  case details['age']
  when 0...18
    details['age_group'] = 'kid'
  when 18...65
    details['age_group'] = 'adult'
  else
    details['age_group'] = 'senior'
  end
end

p munsters