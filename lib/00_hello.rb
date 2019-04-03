def say_hello
	puts "Hello"
end

#say_hello

def say_hello(first_name)
	puts "Hello #{first_name}"
end

#say_hello("Emilie")

def ask_first_name
	puts "Quel est ton nom ?"
	print ">"
	first_name = gets.chomp
	return first_name
end

#ask_first_name

def perform
	first_name = ask_first_name
	say_hello(first_name)
end

perform

