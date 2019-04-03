def say_hello(first_name)
  puts "Bonjour #{first_name}!"
end

def ask_first_name()
  puts "What is your first name?"
  first_name = gets.chomp.capitalize!
  return first_name
end

say_hello(ask_first_name)
