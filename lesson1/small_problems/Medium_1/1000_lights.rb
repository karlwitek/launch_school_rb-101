# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to 
# exactly one light that is initially off.  You walk down the row of switches and toggle every
# one of them.  You go back to the beginning, and on the second pass, you toggle switches 
# 2, 4, 6, and so on.  On the third pass, you go back again to the beginning and toggle switches
# 3, 6, 9, and so on.  You repeat this process and keep going until you have been through 
# n repetitions.  Write a method that takes one argument, the total number of switches, and 
# returns an Array that identifies which lights are on after n repetitions.


def toggle(element)
  element == 0 ? 1 : 0
end

def update_array(array, step)
  array.map.with_index do |element, index|
    if (index + 1) % step == 0
      toggle(element)
    else
      element
    end
  end
end

def lights_on(number_of_lights)
  array_of_lights = (1..number_of_lights).to_a
  array_to_update = array_of_lights.map { |element| element = 0 }
   
  number_of_lights.times do |step|
    array_to_update = update_array(array_to_update, step + 1)
  end

  result_array = []
  array_to_update.each_with_index do |element, index|
    if element == 1
      result_array << index + 1
    end  
  end
  result_array
end

p lights_on(5)
p lights_on(10)

p lights_on(25)

# [1, 4]  (1st and 4th lights are left on.  Not the index of the light)
# [1, 4, 9]
# the first two results match the solutions for the examples.

# [1, 4, 9, 16, 25]

# LS -->

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto (number_of_lights) { |number| lights[number] = 'off' }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == 'on' }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == 'off') ? 'on' : 'off'
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)

# In this exercise, we use a Hash to represent our lights.  A single light is represented as
# a key-value pair within the hash.  The key will be the position that light has out of the
# 1000 lights: the first light position is 1, the last is 1000.  The value of each light is 
# either 'on' or 'off' to represent the state of the light.
# Start by calling toggle_lights with an argument(the number of lights) of 1000.
# toggle_lights immediately calls initialize_lights, which creates and returns a Hash that
# represents a Hash that represents all lights with a current state of 'off'.  Use 1.upto
# (lights.size) method to iterate over the lights as many times as needed.  It uses 
# toggle_every_nth_light to toggle first every light, then every other light, then every 3rd
# light, and so on, until we have iterated over all of the lights 1000 times.
# Finally, we call on_lights to select the lights that are still on.  We use Hash#select,
# which returns a new Hash that contains only the on lights, and then, we chain Hash#keys
# method which returns an array with only the keys of the Hash.
# In on_lights, we use _postion as a parameter name since we don't use the parameter, but
# want to show what it represents.  Using an underscore at the beginning of a parameter name
# is a common convention to show that a parameter isn't used.

# Further: 1. Do you notice the pattern in our answer? Every light that is on is a perfect
# square. Why is that?
# 2. What are some alternatives for solving this exercise? What if we used an Array to 
# represent our 1000 lights instead of a Hash, how would that change our code?
# 3. We could have a method that replicates the output from the description of this problem
# ('lights 2, 3 and 5 are now off; 1 and 4 are on') How would we go about writing this code?
# Answers:
# 1.
# 2. my solution used arrays to solve this problem.
# 3. string interpolation.  Would have to identify the position of lights that are off as well
# as on.  Use those values with string interpolation to replicate the output from the 
# description of this problem.
