## write a method , 2 args, string and int
## prints the int number of times

def repeat(string, int)
  puts "#{string}\n" * int
end

repeat('hi there', 6)

## solution
def repeat2(string, number)
  number.times do
  puts string
  end
end

repeat2("HELLO THERE", 8)
