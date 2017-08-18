# natural consecutive sequence 1..20, 'a'..'z'
# rule :
# .. : both inclusive 1,2,3,... 20
# ...: end exclusice 1,2,3...19

##  efficient : only store start and end
## can be converted to array: method to_a 
## useful: conditions and intervals

some_range = 1..3
puts some_range.max
puts some_range.include? 2

puts (1...10) === 5.3 # 1,2,3..9 include 5.3?
puts ('a'...'r') === 'r'

p ('k'..'z').to_a.sample 2

age = 55
case age
	## implicit using ===
	when 1...30 then puts "age is under 30"
	when 30...90 then puts "age is under 90"
	else puts "aging"
end