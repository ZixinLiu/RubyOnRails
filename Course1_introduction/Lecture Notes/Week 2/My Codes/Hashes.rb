## Hash Basic
# type of keys and values doesn't have to be uniform
# indexed collection of object references
# created with either {}  or Hash.new
# also known as associative array
# key can be anything (types)
# access element : []
# set value: creation =>
#			 post creation [] same as array

editor_pros = {"front" => "Ariel", "size" => 12, "color" => "red"}
puts editor_pros.length
puts editor_pros["size"]

# add element
editor_pros["background"] = "blue"
# pass in a block
editor_pros.each_pair { |key, value|
	puts "key is #{key} and vale is #{value}"
}

## what if the entry dne? return nil
# Hash.new(0) ==> the entry passed here will become the default value returned
# when access something that DNE
world_fre = Hash.new(0)
sentence = "Chicka chicka boom boom"
## make the sentence to array of string, perform each on array
sentence.split.each { |word|
	## default value is useful here since we don't need to check dne
	world_fre[word.downcase] += 1
}
p world_fre

# order of put string maintains
# ususally when we use symobol we do :symbol, as we use symbol as key, we do symbol:
# if hash is the last argument passing into a method, not including block, we can drop{}
family_tree = {oldest: "Jim", older: "Joe", younger: "Jack"} 
## before, not symbol: "older" => "Jack"
## : symbol to access the key
family_tree[:younger] = "Jeremy"
p family_tree
## pass hash as a parameter, set a default one
def adjust_color(props = {foreground: "red", background: "white"})
	puts "Foreground: #{props[:foreground]}" if props[:foreground] ## if key is forground
	puts "Background: #{props[:background]}" if props[:background]
end

# function call with default
adjust_color

## all below are customized call
## most complete
adjust_color({:foreground => "green"})

## remove bracket and reverse : order
adjust_color foreground: "green"

# remove bracket
adjust_color :foreground => "green"


## block and hash confusion *****
hash = {:one => "one"}
puts hash

# syntax error puts {:one => "one"} 
# puts as a method receive a block, but it is given a hash

puts ({:one => "one"})
# remove bracket
puts :one => "one"
puts one: "one"


