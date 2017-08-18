# Ruby provides four types of variables −

# Local Variables − Local variables are the variables that are defined in a method. 
#                   Local variables are not available outside the method. 
#                   Local variables begin with a lowercase letter or _.

# Instance Variables − Instance variables are available across methods for any particular instance or object. 
#                     That means that instance variables change from object to object. 
#                     Instance variables are preceded by the at sign (@) followed by the variable name.

# Class Variables − Class variables are available across different objects. 
#                   A class variable belongs to the class and is a characteristic of a class. 
#                   They are preceded by the sign @@ and are followed by the variable name.

# Global Variables − Class variables are not available across classes. 
#                     If you want to have a single variable, which is available across classes, you need to define a global variable. 
#                     The global variables are always preceded by the dollar sign ($).






class Person
  #have a first_name and last_name attribute with public accessors
  #attr_accessor 
  attr_accessor :first_name, :last_name

  #have a class attribute called `people` that holds an array of objects
  @@people = []

  #have an `initialize` method to initialize each instance
  def initialize(x,y)#should take 2 parameters for first_name and last_name
     #assign those parameters to instance variables
      self.first_name = x 
      # call the setter of current object, which is same as saying @first_name = x, it is better to use
      # self.last_name = last_name since there might be other operation in the setter, but makes no difference
      self.last_name = y
      @@people << self
    #add the created instance (self) to people class variable
  end

  #have a `search` method to locate all people with a matching `last_name`
  def self.search(last_name)
    #accept a `last_name` parameter
    #search the `people` class attribute for instances with the same `last_name`
    #return a collection of matching instances
    @@people.select{|x| x.last_name == last_name}
  end

  #have a `to_s` method to return a formatted string of the person's name
  def to_s
    "#{@first_name} #{@last_name}"
    #return a formatted string as `first_name(space)last_name`
  end
end

p1 = Person.new("John", "Smith")
p2 = Person.new("John", "Doe")
p3 = Person.new("Jane", "Smith")
p4 = Person.new("Cool", "Dude")

puts Person.search("Smith")

# Should print out
# => John Smith
# => Jane Smith
