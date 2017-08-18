## Rspec hangs to to and not_to methods on all outcome of expectations
## to() not_to() take one parameter - a matcher

## eg. expect().to {eq 3} what inside {} is a matcher
## matcher examples: be_true/be_false
					# eq 3
					#raise_error(someError)


## if the object on which the test is operating has a predicate(boolean) method
## you automatically get a be_predicate matcher

## for example {be_nil is a valid matcher since every Ruby object has a :nil? method

it "should sum to odd numbers and become even" do
	expect(@calculator.add(3,3). to be_even)
	expect(@calculator.add(3,4). not_to_be_odd)
end

## rspec --format documentation 
## what the software doing and support

##relishapp.com/rspec
## lots of built-in matchers