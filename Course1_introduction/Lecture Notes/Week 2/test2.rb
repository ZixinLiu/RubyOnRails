time  = 2
# check the condition first 
time *= 2 while(time < 100)
puts time


# case flavor one (if, else if, else, conditions doesn't have to be related)
age  = 21
# when one of the condition is satified, you just exit the casex
case 
	when age >= 21
		puts "you can buy a drink"
	when 1 == 1
		puts "test here"	
	else 
		puts "else condition"
end

# case flavor 2
name = 'fisher'

# compare the condition with this specific variable, when ... then ....
case name
	when /fish/i then puts "something is fishy here"
	when 'smith' then puts "your name is smith"
end

# no need to declare the parameters types, no need to do the ()
# if you say return, it will return, otherwise the last sentence will be returned
def add one, two
	one + two
end

puts add 2, 3


## in the function definition, you can declare the default argument, if it is saying
## then the function is called, if parameter is passed in, use parameter, 
## otherwise, the default one

## splat can only work for the last and middle parameter, not first
def max(numbers, *a, c, b)
	a.max
end

puts max("hello", 9,10,11, "extra", "world")



############################
## block are just code passed into a method, how to pass ? explict or explict?
3.times do |index|
	if index > 0 
		puts index
	end
end

## print 1 here, since the block is used as iteration,  iterate from 0 to n-1
# if it is n times, || often accept parameters between

2.times {|index| puts index if index > 0}


## clding with block
## implict
## check the block_given?
def two_times_implicit
	return "No blocks" unless block_given?
	yield ## block will be evoked
	yield ## block will be evoked	
	yield ## block will be evoked, if there is no block given , 
	#it will throw an exception
end

# given a block
puts two_times_implicit  {puts "Hello"}
## no  block given
puts two_times_implicit

## explicit
def two_time_explict (&i_am_a_block) 
	return "No block" if i_am_a_block.nil? ## wether there is a block
	i_am_a_block.call ## call the block
	i_am_a_block.call # call the blockj
end
puts two_time_explict {puts "hello"}
puts two_time_explict


## reading from files
File.foreach("text1.txt") do |line|
	puts line
	p line ## print the true value of a line, you will see \n
	puts line.chomp ## chop off the newline charater
	puts line.split ## arrat of words in this line
	p line.split
end


	## if the file doesn't exist, threw an exception
	## the program will end
	## if you don't want that, how to handle exception?]

#rescue Exception => e
#	puts e.message
#	puts "File doesn't exist, recover from an exception"
#end

## or check the file exist before you read the file
if File.exist? 'text1.txt'
	File.foreach("text1.txt") do |line|
		puts line
		p line ## print the true value of a line, you will see \n
		puts line.chomp ## chop off the newline charater
		puts line.split ## arrat of words in this line
		p line.split
	end
end


## write to a file
## if there is some already in this file, the content will be replaced
 File.open("text1.txt", "w") do |file|
 	file.puts "One line"
 	file.puts "Another line"
 end
 ## the file will be automatically closed after the block execution

##set environment
puts ENV["EDITOR"] 
## in your OS, you set your environment variable such as EDITOR = SUBLIME
## this will print out sublime




