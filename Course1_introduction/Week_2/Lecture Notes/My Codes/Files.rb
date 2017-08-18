## reading from files
File.foreach("text1.txt") do |line|
	puts line
	p line ## print the true value of a line, you will see \n
	puts line.chomp ## chop off the newline charater
	puts line.split ## arrat of words in this line
	p line.split
end


	## if the file doesn't exist, threw an exception
	## the program will end
	## if you don't want that, how to handle exception?]

#rescue Exception => e
#	puts e.message
#	puts "File doesn't exist, recover from an exception"
#end

## or check the file exist before you read the file
if File.exist? 'text1.txt'
	File.foreach("text1.txt") do |line|
		puts line
		p line ## print the true value of a line, you will see \n
		puts line.chomp ## chop off the newline charater
		puts line.split ## arrat of words in this line
		p line.split
	end
end


## write to a file
## if there is some already in this file, the content will be replaced
 File.open("text1.txt", "w") do |file|
 	file.puts "One line"
 	file.puts "Another line"
 end
 ## the file will be automatically closed after the block execution

##set environment
puts ENV["EDITOR"] 
## in your OS, you set your environment variable such as EDITOR = SUBLIME
## this will print out sublime




