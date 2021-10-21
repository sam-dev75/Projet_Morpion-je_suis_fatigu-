require 'pry'
require_relative 'player_morpion'
require_relative 'board'


class Game < Player  
  attr_accessor :board, :player1, :player2

  def initialize
    @board = Board.new
  end


  def enter_name(player_1, pplayer_2)
    puts "Welcome #{pplayer_1.name} and #{player_2.name} to the Morpion!"
  end


  def show_board   #display morpion 
    @board.display_board
  end
  
  
  
  def menu
    puts row = ["   " "|" "   " "|" "   "]
    puts separator = "-"*15
    puts row
    puts separator
    puts row
  end
  
  
  def menu_choice_player_1
    puts "Player_1,it's Your turn !"
    puts "Type the number"
    choice = gets.chomp.to_i
    if @board.cases_array[choice-1].values.to_s == '[0]'
      @board.cases_array[choice-1] = {choice-1 => 1}
    else
      puts "no"
    end
  end
  
  def menu_choice_player_2
    puts "Player_2, it's Your turn !"
    puts "Type the number"
    choice = gets.chomp.to_i
    if @board.cases_array[choice-1].values.to_s == '[0]'
      @board.cases_array[choice-1] = {choice-1 => 2}
    else
      puts "no"
  end
  end


  def change_board
    @board.cases_array[0] = {0=>1}
  end


  def perform
      count = 0
      enter_name(player_1, pplayer_2)
      system 'clear'
      while @board.cases_array.length > count #&& win
        show_board
        menu
        menu_choice_player_1
        system 'clear'
        count += 1
        show_board
        menu
     
      if @board.cases_array.length > count # && win
        menu_choice_player_2
        show_board
        count += 1
        system 'clear'

      end

    end

  end


end

binding.pry