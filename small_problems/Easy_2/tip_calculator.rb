# Create a tip calculator.  Prompt for a bill amount and a tip rate
# The program must compute the tip and display the tip and total amount
# of the bill.

puts "What is the bill amount? "
bill = gets.to_f

puts "What percentage do you want to tip? (enter number, no decimal) "
tip = gets.to_f / 100

tip_amount = (bill * tip).round(2)
total_bill = tip_amount + bill

puts "The tip amount is $#{tip_amount} "

puts "The total bill is $#{total_bill} "

# works.  needs better formatting to decimal places
# LS below

print 'What is the bill?'
bill = gets.chomp
bill = bill.to_f

print 'What is the tip percentage?'
percentage = gets.chomp
percentage = percentage.to_f

tip = (bill * (percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

# Further Exploration . use Kernel#format to present two decimal places

# puts format("%.2f", tip)      (correct)

print 'What is the bill?'
bill = gets.chomp
bill = bill.to_f

print 'What is the tip percentage?'
percentage = gets.chomp
percentage = percentage.to_f

tip = (bill * (percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", total)}"

## Good!







