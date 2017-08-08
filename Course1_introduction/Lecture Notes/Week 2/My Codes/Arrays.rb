## Basic
# Array is collection of object references, with flexible size
# using [] method to index (0 based)
# can be indexed with negative numbers and ranges ***8
# elements can be different types
# %w{str1, str2} ==> make a string array 

## How arrays are created
het_array = [1, "two", :three] ## different types
puts het_array[0]

arr_word = %w{what a great day today!}
puts arr_word[-2] #==> last second, next indexed
puts "#{arr_word.first} - #{arr_word.last}"
p arr_word[-3, 2] # ==> from the third last, take 2 elements as a array
p arr_word[2..4] # ==> array of third to fifth elements
puts arr_word.join(',') # ==> join all elements with ',' create a new string


## How arrays are modified
# add: push , <<
# remove: pop, shift
# set, modify a specific element []=
# sample :random pull elements out of array
# sort! , reverse! array, w/o !, same as string
stack = [] # empty array
stack << "one"
stack.push("two")
stack.pop # remove 2, remove the last element
p stack

queue = []
queue.push("one")
queue << "two"
queue.shift ## remove 1, remove the first element
p queue

a = [5,4,2,3]
a.sort!.reverse!
p a
p a.sample(2) # pull out 2 random samples

a[6] = 13 # less than 7 elements
p a ## ==> elements before is filled with nil

## Access elements inside Arrays
## array method
# each: loop through array,iterator , block
# select : filter , takes a block setting the condition
# reject : filter same as above
# map: modify each element in a array, perform a function on each element
# all return a new array

a = [1,3,4,7,8,10]
a.each{|num| print num} ## print without new line, puts with new line
puts a
new_arr = a.select{|x| x > 4}
p new_arr

# a is not modifies
new_arr = a.select{|x| x > 4}
		  .reject{|x| x.even?}
p new_arr

new_arr = a.map{|x| x * 3}
p new_arr




