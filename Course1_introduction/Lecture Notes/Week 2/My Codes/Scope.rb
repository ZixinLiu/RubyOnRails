## scope of variable
# Methods and classes begin new scope for variables
# outer scope varibale don't get carried over to the inner scope
# Use local_variables method to see which varibales are in and 
# which are not in the current scope
v1 = "outside"

class Myclass
	def my_method
		## v1 cannot be access since it is outside the method scope
		#p v1  #==> exception
		v1 = "inside"
		p v1 
		p local_variables
	end
end
p v1 ## outside
obj = Myclass.new
obj.my_method
p local_variables ## v1 and obj
p self #main

## scope of constants
# constant : reference begins with uppercase, including classes and modules
# constant's scope rules are different than variable scope rules
## inner scope constant can see outside constants and can override them, 
## values remains unchanged outside
module Test
	PI = 3.14
	class Test2
		def what_is_pi
			puts PI
		end
	end
end

Test::Test2.new.what_is_pi # ==> 3.14 
# (outside passed in, not allowed for variable scope)
module MyModule
	MyConstant = "Outer constant"
	class MyClass
		puts MyConstant ## outer
		MyConstant = "Inner constant"
		puts MyConstant ## inner
		## overall, you can use the outside const, or refined it
	end
	puts MyConstant ## outer, remian unchanged outside
end

## how scope work with blocks
# Block inherit outer scope
## Block is a closure: remembers the context in which it was defined and uses
## that context whenever it is called


class BankAccount
	attr_accessor :id, :amount
	def initialize(id, amount)
		@id = id
		@amount = amount
	end
end
acct1 = BankAccount.new(123,200)
acct2 = BankAccount.new(321,100)
acct3 = BankAccount.new(421,-100)
accts = [acct1,acct2, acct3]

total_sum = 0
accts.each {|eachAcct| total_sum += eachAcct.amount}
# method won't allow you to modify total_sum since it is outside the scope
# block inherit from outside, you can use total_sum
puts total_sum


###### block --- local scope
# even though blocks share the outer scope 
# a variable created inside the block is only avaiable to the block
arr = [5,4,1]
cur_num = 10
arr.each {|cur_num| som_var = 10; print cur_num.to_s + " "}  ## 5,4,1
## cur_number is local and new inside the block, nothing to do with the outside one
## since it is used as iterator, each num in the array
puts
puts cur_num ## 10


## Parameters to the blocks are always local to the block
## even if they have the same name as variables in the outer scope

## can explicitly declare block local variables after a semicolon in the block paremeter list

adjustment = 5
## make 2 local variable, one is used as iterator, one is new local
arr.each {|cur_num; adjustment| adjustment = 10; puts "#{cur_num + adjustment}"}
## print 15, 14, 11
puts 
puts adjustment ## still 5





















































