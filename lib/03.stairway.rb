def dé
  position_joueur = 0
  while position_joueur < 10 do
    puts "Appuie sur une entrée pour lancer le dé :"
    gets.chomp
    résultat = rand(1..6)
    puts "Tu as fait #{résultat} !"
    if résultat >= 5
      puts "Tu avances d'une marche ! "
      position_joueur += 1
      puts "Tu es à la marche n°#{position_joueur} !"
      puts
    elsif résultat == 1
      puts "Pas de chance, tu recule d'une case ! "
      position_joueur -= 1
      puts "Tu es à la marche n°#{position_joueur} !"
      puts
    else
      puts "Rien ne se passe"
      puts "Tu es à la marche n°#{position_joueur} !"
      puts
    end
  end
  if position_joueur == 10
    puts "Félicitations, tu as gagné, le jeu est terminé."

  end
end

def average_finish_time
  position_joueur = 0
  nb_victoire = Array.new
  tour = 0
  100.times do
    while position_joueur < 10 do
      puts "Appuie sur une entrée pour lancer le dé :"
      résultat = rand(1..6)
      puts "Tu as fait #{résultat} !"
      tour += 1

      if résultat >= 5
        puts "Tu avances d'une marche ! "
        position_joueur += 1
        puts "Tu es à la marche n°#{position_joueur} !"
        puts
      elsif résultat == 1
        puts "Pas de chance, tu recule d'une case ! "
        position_joueur -= 1
        puts "Tu es à la marche n°#{position_joueur} !"
        puts
      else
        puts "Rien ne se passe"
        puts "Tu es à la marche n°#{position_joueur} !"
        puts
      end
    end
    if position_joueur == 10
      position_joueur = 0
      victoire = "Félicitations, tu as gagné, le jeu est terminé."
      nb_victoire << victoire
    end
  end
  print "Vous avez gagné ", nb_victoire.count, " fois !"
  puts
  puts "Vous avez eu besoin de #{tour} tours."
  moyenne = tour / 100.00
  puts "En moyenne, il faut #{moyenne} tours pour gagner la partie."
end

average_finish_time
