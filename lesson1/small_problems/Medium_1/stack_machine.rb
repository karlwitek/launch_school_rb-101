
def stack_machine(string)
  values = string.split
  register = 0
  stack = []
  values.each do |elem|
    if elem.to_i.to_s == elem
      register = elem.to_i
    else
      case elem
      when 'ADD'
        register = register + stack.pop
      when 'PUSH'
        stack << register
      when 'SUB'
        register = register - stack.pop
      when 'MULT'
        register = register * stack.pop
      when 'DIV'
        register = register / stack.pop
      when 'MOD'
        register = register % stack.pop
      when 'POP'
        register = stack.pop
      when 'PRINT'
        puts register
      end
    end
  end
end

# stack_machine('PRINT')
# stack_machine('5 PUSH 3 MULT PRINT')
# stack_machine('5 PRINT PUSH 3 PRINT ADD PRINT')
# stack_machine('5 PUSH POP PRINT')
# stack_machine('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# stack_machine('3 PUSH PUSH 7 DIV MULT PRINT')
# stack_machine('4 PUSH PUSH 7 MOD MULT PRINT')
# stack_machine('-3 PUSH 5 SUB PRINT')
# stack_machine('6 PUSH')
# output is good

# LS -->

def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token
    when 'ADD'    then register += stack.pop
    when 'DIV'    then register /= stack.pop
    when 'MULT'   then register *= stack.pop
    when 'MOD'    then register %= stack.pop
    when 'SUB'    then register -= stack.pop
    when 'PUSH'   then stack.push(register)
    when 'POP'    then register = stack.pop
    when 'PRINT'  then puts register
    else               register = token.to_i
    end
  end
end

# minilang('4 PUSH PUSH 7 MOD MULT PRINT')

# Set up a processing loop and do the necessary processing. Start by creating a stack
# and register and then walk through each 'token' in the program, performing the 
# appropriate action during each iteration. A token is one of the words or values in 
# the language.  Use a case statement for the body of our loop.
# Further: Try writing a minilang program to evaluate and print the result of this expression.
# (3 + (4 * 5) - 7) / (5 % 3)
# The answer should be 8. (write a program(string) to pass to the method)
# Plus: Add some error handling to your method. Have the method detect empty stack conditions,
# and invalid tokens in the program, and report those. Ideally, the method should return
# an error message if an error occurs, and nil if the program runs successfully.



# minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')
# 8  Good..

# (Have to push values onto the stack early on so can pop against the register
#  value when needed.  (5 % 3) value was pushed after 5 tokens and then popped
#  with DIV at the end of the program)


def stack_empty?(stack)
  if stack.empty?
    puts "Error: empty stack"
    return true
  end
  false
end

def stack_machine(string)
  values = string.split
  register = 0
  stack = []
  values.each do |elem|
    if elem.to_i.to_s == elem
      register = elem.to_i
    else
      case elem
      when 'ADD'   then if stack_empty?(stack)    
                        else register = register + stack.pop
                        end
      when 'PUSH'  then stack << register
      when 'SUB'   then if stack_empty?(stack)
                        else register = register - stack.pop
                        end
      when 'MULT'  then if stack_empty?(stack)
                        else register = register * stack.pop
                        end
      when 'DIV'   then if stack_empty?(stack)
                        else register = register / stack.pop
                        end
      when 'MOD'   then if stack_empty?(stack)
                        else register = register % stack.pop
                        end
      when 'POP'   then if stack_empty?(stack)
                        else register = stack.pop
                        end
      when 'PRINT' then puts register
      else         puts "token not valid"
      end
    end
  end
  nil
end

stack_machine('3 PUSH PRINT 4 MULT PRINT ADD ADD ADD DOG')
# 3
# 12
# Error: empty stack
# Error: empty stack
# Error: empty stack
# token not valid

puts stack_machine('3 PUSH PRINT 4 MULT PRINT')

# 3
# 12
#

# Returns nil.  Empty stack and invalid tokens produce error message. Would have to 
# check for invalid token at the start of case statement if wanted to prevent any
# output before message 'token not valid'.  Maybe with regex applied to first 'when'.

