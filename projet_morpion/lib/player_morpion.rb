require 'bundler'
require 'pry'

class Player
   #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  
   attr_reader :name , :value
  def initialize (player_name , value)
    @name = player_name
    @value = value
  end

  def player_1
    puts "Joueur 1 : merci d'entrer votre nom et une valeur X ou O"
    player_name = gets.chomp.to_s
    value = gets.chomp.to_s
    player_1= Player.new(player_name,value)
  
  end

  def player_2
    puts "Joueur 2 : merci d'entrer votre nom et une valeur X ou O"
    player_name = gets.chomp.to_s
    value = gets.chomp.to_s
    player_2= Player.new(player_name,value)
    
  end


end



#puts player1
#puts player2
