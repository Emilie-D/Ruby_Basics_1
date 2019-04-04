def half_pyramid()
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  $height = gets.chomp.to_i
  puts
  puts "Voici la pyramide :"
  puts
  $height.times { | x |
    print ' ' * ($height - x)
    puts '#' * (1 + x)
  }
end

def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  height = gets.chomp.to_i
  puts
  puts "Voici la pyramide :"
  puts
  height.times { | x |
    print ' ' * (height - x), '#' * (x)
    puts '#' * (1 + x)
  }
end


def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu ?"
  print ">"
  x = gets.chomp.to_i
  user_number = (x/2) + 1
  puts "Voici la pyramide :"
  i = 0
  if x %2 != 0
    while i < user_number
      i += 1
      puts " " * (user_number - i) + "#" * (2 * i - 1)
    end
    while i > 1
      i -= 1
      puts " " * (user_number - i) + "#" * (2 * i - 1)
    end
  else
    puts "On accepte seulement les nombres impairs."
  end
end

half_pyramid
puts
full_pyramid
puts
wtf_pyramid
