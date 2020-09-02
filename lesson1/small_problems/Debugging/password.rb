# password = nil

# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   password = new_password
# end

# def verify_password
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp

#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end

# if !password
#   set_password
# end

# verify_password

# The following code prompts the user to set their own password if they haven't done so
# already, and then prompts them to login with that password. However, the program throws
# an error.  What is the problem and how can you fix it?
# Once you get the program to run without error, does it behave as expected? Verify that
# you are able to log in with your new password.

# my answer:
# Need to change verify_password to accept a parameter (user_password).  The variable 
# password needs to be passed into the method to test against input.  When set_password
# is called, the return value needs to be stored in a variable (password).

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password(user_password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == user_password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)

# LS -->

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Enter your password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)

# When we initially run the code, the following exception is raised: 'undefined local variable
# or method 'password' for..' This tells us that within the verify_password method, Ruby cannot
# access the variable that we initialized on line 1. (Methods create their own scope, and that
# within a method we do not have access to local variables in outer scopes).
# We can fix this error by passing password as an argument to the verify_password method.

# Next, we find that the set_password method is not updating our password as expected. The
# reason is that the variable password, to which we assign the value referenced by new_password
# on line 6, is local only to the set_password method, and this variable does not impact the
# local variable password intialized on line 1.
# We can solve this issue by re-assigning password to the return value of set_password on line
# 22. We can then also remove the unnecessary variable assignment on line 6 within 
# set_password.  
# Note: in reality, passwords would never be shown as plain text or stored unencrypted.


