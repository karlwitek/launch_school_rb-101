# Find the index of the first name that starts with 'Be'
# in the array.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
  if name.start_with?('Be')
    puts flintstones.index(name)
  end
end
# works. LS -->
puts flintstones.index { |name| name[0, 2] == 'Be' }


