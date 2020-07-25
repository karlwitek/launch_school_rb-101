# Amend this array so that the names are all shortened to just
# the first three characters.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

short = flintstones.map { |name| name[0, 3] }
p short
# works.  also with name.slice(0, 3).  LS -->

flintstones.map! { |name| name[0,3] }
p flintstones

# need ! to amend the array. (mutate)
