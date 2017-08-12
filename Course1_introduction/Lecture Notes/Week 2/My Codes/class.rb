# class : container of method (behaviors)
# objects: instance of class
# each instance: contains intance variables(states)


##### key
# @name ==> name variable of this intance of the class
# instance variable don't need to be declared: 
# spring into existence when you first use them 
## example below: in C++, you need to declare what are memeber variabls,
## here you don't need to, when you first use member variables such as
## initialization, the member variables will be declared and used
# intance variables are avaliable to all instance methods of the class

#########################################################################
# how objects are created
# call new method, acces the constructor,
# where tha state or the instance variables are initialized
class Person
	# constructor
	def initialize(name, age)
		@name = name
		@age = age
	end

	def get_info
		@additional_info = "interesting"
		"Name: #{@name}, Age: #{@age}"
	end
end

# ## for each class there is a build method ==> new, used to create a object
# person1 = Person.new("Joe", 14)##  call the constructor

# ## how could I know all the member variables
# p person1.instance_variables   ## *** this will only give you the name and age, 
# 							   # since the getinfo method has not been call, 
# 							   #so, additional_info dne at this time
# ## call the member function
# puts person1.get_info
# p person1.instance_variables  ## all three member variables dne
# ##############################################################################
# # how to access data within objects
# # instance variables are private, cannot be accessed outside the class ==>setter, getter
# # method are public by default
class Person
	# constructor
	def initialize(name, age)
		@name = name
		@age = age
	end
	## name getter
	def name
		@name
	end
	## name setter
	def name= (new_name)
		@name = new_name
	end
end
person1 = Person.new("Joe", 14)
# call the getter
puts person1.name

#call the setter
person1.name = "Mike"
puts person1.name

#puts person1.age ## undefined since there is no age getter
## esier syntax for setter and getter
## attr_*
		# attr_accessor ==> create setter and getter for instance variables
		# attr_reader ==> getter only
		# attr_writer ==> setter only
class Person
	attr_accessor :age, :name ## create getter and setter for what variables
end
## unitialized state
person1 = Person.new # ctor, as long as you declare other ctor, it will have compile
p person1.name ## nil due to the ctor, haven't assigned
person1.name = "Mike"
person1.age = 15
puts person1.age
puts person1.name
person1.age = "fifteen" ## it's ok since ruby is dynamic language
puts person1.age



##what if we want to have more control on the setter or getter,
## for example, we cannot set people age above 100
## solution ==> constructor

## self keyword, refer the object itself, 
# use self calling the other method of the same instance is extraneous
# outside instance method definition, self refer to the class itself


class Person
	attr_reader :age
	attr_accessor :name

	def initialize(name, ageVar) 
		@name = name
		## call the age setter, we cannot have @age = ageVar, 
		## in this case, it won't call the setter, it will create a new member variable directly
		self.age = ageVar

		## call the age reader
		puts age ## print out nothing if age is not assigned
		p age
	end
	# setter
	def age= (new_age)
		@age = new_age unless new_age > 120
	end
end

person1 = Person.new("Kim", 13) 
puts person1.age

person1.age = 130 ## won't change since it doesn't meet the condition
puts person1.age

person2 = Person.new("Jim", 150)
puts person2.age






