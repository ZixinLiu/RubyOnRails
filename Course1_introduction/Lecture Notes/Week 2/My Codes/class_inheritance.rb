### good resource to understand the difference between class method
### and instance method

####http://www.railstips.org/blog/archives/2009/05/11/class-and-instance-methods-in-ruby/

### here is a good resource to understand when to use self
#### https://hackhands.com/three-golden-rules-understand-self-ruby/

###########################################################################################
# the || operator

# if the left is true --> return left
# else return the right side , it doesnt return t/f

##e.g 
## @x = @x || 5, return 5 first time since @x is not assigned, which is nil
## return the right side --> 5, then 5 is assigned to x, x is not nil,
## the lfet side is evaluate to true, then return @x  next time

@x = @x || 5 
@x ||= 5 ## same as above
# if x is set, (not nil) return itself
# if it is not set, set to 5 as default value



class Person
	attr_reader :age
	attr_accessor :name

	def initialize(name, ageVar) 
		@name = name
		## call the age setter, we cannot have @age = ageVar, 
		## in this case, it won't call the setter, it will create a new member variable directly
		self.age = ageVar

		## call the age reader
		#  
	end
	# setter
	def age= (new_age)
		@age ||= 5 # if not set, set as de fault (5)
		@age = new_age unless new_age > 120
	end
end

person1 = Person.new("Kim", 130) # age is set to 5 since 130 doesn't meet the condition
puts person1.age # 5
person1.age = 10 # age is 10
puts person1.age 
person1.age = 200 # doesn't change, still 10
puts person1.age


#####################################################
## class method and class variable
# Invoked on the class (similr to static in Java)
# self outside of the method defintion refers to the class object
# that is how you know something is a method class



# 3 ways to define class method in Ruby
# class variable begin with @@,
# @ gives you instance variable


# it doesn't make a lot of sense to create a instance of this class, since it is just a utility class
# if it a Person class, it will make more sense to make a instance of the class
class MathFunctions
	# 1. first way to define a class method, inside the class
	def self.double(var) #define a class variale, use self
		times_called; var * 2;
	end
	# 2. another way to define a class method
	class << self
		def times_called
			@@times_called ||= 0
			@@times_called += 1
		end
	end
end

# 3. define a method outside the class
def MathFunctions.triple(var)
	times_called; var * 3
end

# no instance created
puts MathFunctions.double 5 #  --> give 10, class method,
#  when we create a instance of a class, we just call double directly on the class itself
puts MathFunctions.triple 3 #  ==> 9
puts MathFunctions.times_called # ==> 3, it has been called 3 times
#####################################################
# class inheritance
# every class implicitly inherits from object
# object itself inherits from BasicObject
# no multiple inheritance
# mixins are used instead
class Dog
	def to_s
		"Dog"
	end
	def bark
		"Bark loudly"
	end
end

class SmallDog < Dog ## < used to represent inheritance
	def bark
		"Bark quietly" ## override
	end
end

dog = Dog.new
small_dog = SmallDog.new
puts dog.bark ## loudly
puts small_dog.bark ## quiety, function override

## when to use self
# 1. use self when setting/ getting instance attributes inside the class
# 2. use self to denote a method as class method inside class definition
# 3. use self to reference the calling object itself inside instance method definition



