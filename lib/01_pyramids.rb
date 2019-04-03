def half_pyramid 
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu ?"
	print ">"
	user_number = gets.chomp.to_i
	puts "Voici la pyramide :"
	i = 0
	while i < user_number
  		i += 1
  	puts " " * (user_number - i) + "#" * i
	end 
end

#half_pyramid

def full_pyramid 
	#puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu ?"
	#print ">"
	#user_number = gets.chomp.to_i
	puts "Voici la pyramide :"
	i = 0
	while i < $user_number
		i += 1
	puts " " * ($user_number - i) + "#" * (2 * i - 1)
	end
end

#full_pyramid

def reverse_pyramid
	#puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu ?"
	#print ">"
	#user_number = gets.chomp.to_i
	#puts "Voici la pyramide :"
	i = $user_number
	while i > 1
		i -= 1
	puts " " * ($user_number - i) + "#" * (2 * i - 1) 
	end
end

#reverse_pyramid

def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu ?"
	print ">"
	$user_number = gets.chomp.to_i
		if $user_number %2 != 0 
	puts "Seulement un nombre pair !"
		else
		full_pyramid
		reverse_pyramid
		end
end

wtf_pyramid