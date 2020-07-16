# Code along with video , Walk Through: Calculator

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)    # calling methods with the module
#  ( where the methods live )

require 'yaml'
MSGS = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num_str) # refactor without explicit return of true
  # num_str.to_i != 0  
  # input = /[0-9]/.match(num_str)
  /\p{N}/.match(num_str) || /\p{Nd}/.match(num_str)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MSGS['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?
    prompt(MSGS['valid_name'])
  else
    break
  end
end

prompt(MSGS['hi'] + " #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MSGS['first_number'])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MSGS['invalid_number'])
    end
  end

  # Kernel.puts(number1.inspect())
  # Kernel.puts("the number is : " + number1 + "!")
  # ! outputs on next line. why?
  # .inspect outputs "5\n"

  number2 = ''
  loop do
    prompt(MSGS['second_number'])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MSGS['invalid_number'])
    end
  end
  operator_prompt = MSGS['oper_prompt']
  
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MSGS['invalid_oper'])
    end
  end

  prompt("#{operation_to_message(operator)} " + MSGS['oper_display'])

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt(MSGS['result'] + "#{result}")

  prompt(MSGS['repeat_app'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MSGS['ending_message'])
## convert to float for division. Not integer division
