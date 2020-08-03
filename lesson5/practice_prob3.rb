# For each of these collection objects demonstrate how you would
# reference the letter 'g'.




arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
puts arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
puts arr2[1][:third][0]


arr3 = [['abc'], ['def'], {third: ['ghi']}]
puts arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
puts hsh2[:third].keys # correct. try with 'f'
# LS ---->
puts hsh2[:third].key(0)
# Hash#key method returns the key of an occurrence of a given value.
# If more than one key has the same value, the method returns the key for the
# first occurrence of that value.
# If the requested value does not exist in the hash, then nil is returned.
# my solution not quite correct..  
puts hsh2[:third].keys[0] 
# Hash#key and Hash#keys are two completely different methods.  Hash#key returns
# a single key based on the value passed to the method.  Hash#keys returns an
# array of all the keys in the hash, [0] references the object at index 0 of the 
# returned array.


p hsh2[:second].keys[1] # .keys returns an array.  called[1] on the array
# returns "f" with p hsh2.  f with puts hsh2.  Same with line 18.
# LS -->


