require_relative 'player_morpion'
require_relative 'boardcase'
require 'pry'

class Board
   
  attr_accessor :board
  
  def board
    board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def display_board
    puts row = ["   " "|" "   " "|" "   "]
    puts separator = "-"*15
    puts row
    puts separator
    puts row
  end

  def display_board(board)
    puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
    puts "-" * 15
    puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
    puts "-" * 15
    puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
  end

  puts display_board

  #def play_turns
  #1) demande au bon joueur ce qu'il souhaite faire
  #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  def play_turn(players)
    puts "#{players.name} quelle case souhaites-tu jouer ? "
    selection = gets.chomp.to_s.upcase
    if selection == "A1"
      @board[0] = players.pawn
    elsif selection == "A2"
      @board[1] = players.pawn
    elsif selection == "A3"
      @board[2] = players.pawn
    elsif selection == "B1"
      @board[3] = players.pawn
    elsif selection == "B2"
      @board[4] = players.pawn
    elsif selection == "B3"
      @board[5] = players.pawn
    elsif selection == "C1"
      @board[6] = players.pawn
    elsif selection == "C2"
      @board[7] = players.pawn
    elsif selection == "C3"
      @board[8] = players.pawn
    end
  end
     

  def victory? (board)
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  
    WIN_COMBINATIONS = [ 
      [0,1,2], # top_row 
      [3,4,5], # middle_row 
      [6,7,8], # bottom_row 
      [0,3,6], # left_column 
      [1,4,7], # center_column 
      [2,5,8], # right_column 
      [0,4,8], # left_diagonal 
      [6,4,2] # right_diagonal 
      ]
  
    WIN_COMBINATIONS.each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]
      position_1 = board[win_index_1] # value of board at win_index_1
      position_2 = board[win_index_2] # value of board at win_index_2
      position_3 = board[win_index_3] # value of board at win_index_3
      position_1 == position_2 && position_2 == position_3 && play_turn(board, win_index_1)
    end
      

  end

end

