

def signup()
  puts "Please, create your password"
  password = gets.chomp
end

def login_method(password)
  puts "Please, login:"
  login = gets.chomp
  if password != login
    until password == login
      puts "error, retype password: "
      login = gets.chomp
    end
  else
    welcome_screen()
  end
end

def welcome_screen()
  puts "Welcome to NSA."
end

def perform
  password = signup
  login = login_method(password)
end

perform
