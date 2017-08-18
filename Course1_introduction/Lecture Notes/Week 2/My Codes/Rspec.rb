## .rspec --install --> creat spec
## dirctory for you where all "specs" go

## describe()
## set of related tasks
## take either string or class as argument
## all specs must be inside the describe block
## no class to sub class: Test:Unit is subclass of TestCase class


## before() and after() methods are similar to setup() and teardown() in MiniTest
## can pass in either :each or :all to specify wether the block will run before/
## after each testcase or once before/after all tests
## before :all could be useful, for example you only want to connect to DB once

## it()
## main logic happen inside it() method, used to difine the actual Rsoec
## specification/ examples (like main() in C++)
## take an optional String that describe the behavior being tested

#### example:
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

## rspec ---init ---> create a spec directory holds calculator_spec.rb 
## and spec_helper.rb, this folder should be put along with .rspec and class file

require 'rspec'
require_relative '../calculator'## match name

## calculator is our class
describe Calculator do
	## before each test create an instance
	before {@calculator = Calculator.new('Rspec calculator')}
	
	## tell you which feature is testing
	it "should add 2 numbers correctly" do 
		## do operation on instance created before
		expect(@calculator.add(2,3)).to eq 4
	end

	it "should subtract two numbers correctly" do
		expect(@calculator.minus(4,2)).to eq 2
	end
end
## more intuitive and more english -like





















