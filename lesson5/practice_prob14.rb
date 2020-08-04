# Given this data structure write some code to return an array containing the colors of the
# fruits and the sizes of the vegetables. The sizes should uppercase and colors should
# be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

a = hsh.map do |item, value|
  if value[:type] == 'fruit'
    value[:colors].map { |color| color.capitalize }
  elsif
    value[:type] == 'vegetable'
      value[:size].upcase
  end
end

p a
# works  [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
# another solution 

b = hsh.values.map do |value|
  if value[:type] == 'fruit'
    value[:colors].map { |color| color.capitalize }
  else
    value[:size].upcase
  end
end

p b
# works. [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
# LS -->

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

# output not checked.
# We want to return an array where each item in the outer hash is represented
# by a particular value from within each nested hash, so map is a good choice to 
# call on the initial hsh object. Since the value to be returned to map by the
# outer block depends on whether :type equates to fruit or vegetable, we need
# to use a conditional statement to determine what is returned and what other
# options are performed on those values prior to them being returned by the 
# outer block.  We want to capitalize the strings that are nested within arrays
# so we need to iterate through those arrays in order to access them.




