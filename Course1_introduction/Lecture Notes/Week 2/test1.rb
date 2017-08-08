#puts 3
a = 5
if a == 5
		puts "a is 5"
	elsif a == 3
		puts "a is 3"
	else 
		puts "a is not 3 and 5"
end

b = 6
## print if b is not 6, unless b is not 6 , otherwise it prints
unless b == 6
	puts "b is not 6"
end

c = 8
while c >= 8 
	puts "c is still above or equal to 8"
	c -= 1
end

# print when the condition doesn meet
d = 10
until d < 8
	puts "d is greater than 8"
	d -= 1
end

# if modifier form
e = 10 
f = 9
puts "condition meets" if e == 10 and f == 9

# while modifier form
times_2 = 2
times_2 *= 2 while times_2 < 10
## print 16 at the end once
puts times_2

age = 21
case 
	when age == 21 
		puts "age is 21"
	unless age == 20
		puts "age is not 20"	
	end
end

year = 1995
case year
	when 1995 then puts "year is about 1995"
	when "hello" then puts "year is a string"
end

# print everything in the range
for i in 0..2
	puts i
end