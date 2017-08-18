################ three levels of access control
## when designing your class  '
## -- important to think about how much of it you will be exposing to the world
## Encapsulation: try to hide the internal representation of the object 
## you can change it later
## 3 levels: public, protected and private

class Car
	def initialize(speed, comfort)
		@rating = speed * comfort
	end
	## can't be set from outside, it is a getter
	def rating
		@rating
	end
end
# Even you change the equation of rating, people still can access rating function
# this funciton is still meaningful, outside API won't change


########## how to sepcify controlling access
## 1: specify keyword: public, protected, private
## everything until the next access control keyword will be of that access control level
## all ruby method are public by default
class MyAlogorithm
	private
		def test1
			"private"
		end
	protected 
		def test2
			"Protected"
		end
	public
		def public_again
			"Public"
		end
end
## 2. Define the methods regularly and then specify public
## private, protected access levels and list the comma-seperated
## methods under those level using method symbols

class Another
	def test1
		"Private, as declared laster on"
	end
	private :test1 ##put method name here
end

## How private is private access
### public: no access control : everybody
### protected: invoked by the defining class and its subclass
### private: cannot be invoked with an explicit receiver
### exception: setting an attribute can be invoked with an explicit receiver
class Person
	def initialize(age)
		self.age = age ## legal, call age= method, setter

		puts my_age ## illegal here, call a private function 
	end
	private 
		def my_age
			@age
		end
		def age= (age)
			@age = age
		end
	
end


