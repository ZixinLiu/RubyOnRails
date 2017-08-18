# \n treated as string, \ used to escape '
single_quote = 'Ice cream \n followed by it \'s party.'
# \n treated as newline, \ used to escape '
double_quote = "Ice cream \n followed by it \'s party."

puts single_quote
puts double_quote

# user defined function
def multiple one, two
	# property of double quote: allow string interpolation, 
	# #{} used to call the paramter
	"#{one} multipled by #{two} is #{one * two}"
end
puts multiple 3, 5

# string returned by its copy, a new string
# string method end by ! modify the exsiting string 
# (alert you that I am going to modify the string)

# another way to create a string %Q{}, 
# behave the same as double quote "" + span multiple lines

myname = " tim"
# remove the space in front ==> "tim"
puts myname.lstrip
# capitalize the first letter ==> "Tim"
puts myname.lstrip.capitalize

# these two just made two copies and modify them, the original one doesn't change
p myname

# how to change ?
myname.lstrip!
puts myname
myname.capitalize!
puts myname
p myname

myname[0] = 'K'
puts myname
p myname


##### %Q
cur_weather = %Q{It's a hot day outside
				please bring your umbrella...}

# build in function, split strings into lines
# pass in a block as a iterator
cur_weather.lines do |line|
	line.sub! 'hot', 'rainy' # modify the string itself, substitue hot into rainy
	#line.lstrip! 
	#line.capitalize! ==> these two modify the lines themseelves
	puts "#{line.lstrip.capitalize}" # make a copy and print the modified versions
	p line
end

## check out the string APIs, lots of useful built in string methods

## symbols : much less methods than strings, serve as different purposes
#foo- highly optimized string, 
				# const name , don't need to predeclare
				# stands for something, string type, it is symbols, flag, indicator
				# unique and immutable (don't change)

## symbol and strings conversions:
	#symbol to string: to_s
	#string to symbol: to_sym

# method names are not strings, they are symbols, the method names are not 
# intended to change, they are just used to capture the information 


