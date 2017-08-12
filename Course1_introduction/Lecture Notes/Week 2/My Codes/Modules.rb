## Modules: as Namespaces
		#   as Mixins

## Using buit-in Ruby moduless, Enumerable
# require_relative


# module container of classess, methods and constants, other modules
# module cannot be instantiated
# class inherits from modules and adds new


## purpose 1: namespace
module Sports
	class Match
		attr_accessor :score
	end
end
module Patterns
	class Match
		attr_accessor :complete
	end
end

match1 =  Sports::Match.new
match1.score = 45
puts match1.score

match2 = Patterns::Match::new ## instance of match class
match2.complete = true
puts match2.complete

## purpose2: Mixins
## interface in OO: contract : define what a class could do
## Mixins provide a way to share ready code among multiple classess
## you can include built-in modules like Enumerable that can do hard work for you
module SayMyName
	attr_accessor :name
	def print_name
		puts "Name: #{@name}"
	end
end

class Person
	include SayMyName
end
class Company
	include SayMyName
end


person = Person.new
p person.name
person.name = "Joe" ## include module have name
puts person.name
person.print_name

company = Company.new
company.name = "Google"
puts company.name
company.print_name

## include built-in module itself
## Enumerable Module
## map, select reject, delete 
## (Array class include enumerable method, that gives all the functionality)
## you can include Enumerable module, ==> provide implementation for each class

## name of the file - player.rb
class Player
	attr_reader :name, :age, :skill_level

	def initialize(name, age, skill_level)
		@name = name
		@age = age
		@skill_level = skill_level
	end

	def to_s
		"<#{@name}: #{@skill_level}(SL), #{@age}(AGE)>"
	end
end


## team.rb
class Team
	include Enumerable
	attr_accessor :name, :players
	def initialize (name)
		@name = name
		@players = []
	end
	def add_players(*players_arr) #splat
		@players += players_arr
	end

	def to_s 
		"#{@name} team: #{@players.join(",")}"
	end
	def each ###key, operator on player 
		@players.each {|player| yield player} ## yield player to the block
	end
end



## regular file, relative to what files

##require_relative 'player'
##require_relative 'team'

player1 = Player.new("Bob",13,5)
player2 = Player.new("Jim",15,4.5)
player3 = Player.new("Mike",21,5)
player4 = Player.new("Joe",14,5)
player5 = Player.new("Scott",16,3)

red_team = Team.new("Red")
## add each player to the array
red_team.add_players(player1,player2, player3, player4,player5)
## red_team is an instance of team, who have each implemented and include
## Enumberable
puts red_team
## able to use select, to filter the content of the array of players
## range has be put in the front
eglib_players = red_team.select{|player| (14..20) === player.age }
						.reject{|player| player.skill_level < 4.5}
puts eglib_players





