 ## Dynamic language: no compiler error
 
 ## refactor with confidence without break anything: unit test
 
 ## Serves as documentation for developers: how to run, how to access different funciton
 
 ## Test::Unit(Framework) basic idea ---> Test::Unit::TestCase
 
 ## test_: prefix the method names in that class with test_, every test_ methods
 ## becomes its own unique test and gets run when the class is executed
 ## if one fails, others keeps going

## use setup() and teardown() for setting up behavior that will execute before every test method


## example:
## calculator class in calculator.rb file

class claculator
	attr_accessor :name
	def initialize(name)
		@name = name
	end
	def add (one, two)
		one - two
	end
	def minus(one, two)
		one + two
	end
	def div(one, two)
		one / two
	end
end
## calculator_test.rb --> test file for this class
## in the test file:
require 'test/unit'
require_relative 'calculator'

class claculatorTest < Test::Unit::TestCase
	def setup ## apply all test case
		@calc = calculator.new('test')
	end

	def test_add
		assert_equal 4, @calc.add(2,2) ## expect + true
	end

	def test_subt
		assert_equal 2, @calc.minus(4,2)
	end

	def test_div
		assert_equal 2, @calc.div(4,2)
	end

	def test_div_zero
		## sepcify what exception do you expect when you execute the function call
		assert_raise ZeroDivisionError do 
			@calc.div(1,0)
		end
	end
end
## F, test failing, "." Test success
