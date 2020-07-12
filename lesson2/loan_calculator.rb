# This program will ask the user for the loan amount, APR, and the
# loan duration (in years), and output the monthly payment and the 
# total interest of the loan.
# Run through Rubocop
# Check for valid inputs

# prompt user for 3 inputs

puts "Enter the loan amount in US dollars as a whole number (ie. 500 for $500.00)"
loan_amount = gets.chomp.to_f

puts "Enter the Annual Percentage Rate as a whole number ( 5 for 5%)"
annual_percentage_rate = gets.chomp.to_f

puts "Enter the loan duration in years"
duration_in_years = gets.chomp.to_i

# set variables for loan duration (in months) and
# monthly interest rate

monthly_percentage_rate = annual_percentage_rate / 100 / 12
duration_in_months = duration_in_years * 12

# write methods to calculate monthly payment and total interest on the loan

def monthly_payment(loan_amount, monthly_percentage_rate, duration_in_months)
  payment = loan_amount * (monthly_percentage_rate/(1 - (1 + monthly_percentage_rate) ** (-duration_in_months)))
end

def total_cost_of_loan(monthly_payment, duration_in_months)
  total_cost = monthly_payment * duration_in_months
end

pay_per_month = monthly_payment(loan_amount, monthly_percentage_rate, duration_in_months)
total_repayment = total_cost_of_loan(pay_per_month, duration_in_months)
cost = total_repayment - loan_amount

puts "You will have #{duration_in_months} payments of $#{format("%.2f", pay_per_month)} per month."
puts "The total interest on the loan will be $#{format("%.2f", cost)} "
