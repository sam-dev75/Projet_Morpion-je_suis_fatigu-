require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib/app', __FILE__)
require 'game'
require 'player'

loop do
 class Application < Game
   system 'clear'
  puts "
   ███▄ ▄███     █████     ██▀███     ██▓███     ██▓    █████    ███▄     █ 
  ▓██▒▀█▀ ██▒  ▒██▒  ██▒  ▓██ ▒ ██▒  ▓██░  ██▒  ▓██▒  ▒██▒  ██▒  ██ ▀█    █ 
  ▓██    ▓██░  ▒██░  ██▒  ▓██ ░ ▄█▒  ▓██░ ██▓▒  ▒██▒  ▒██░  ██▒  ▓██  ▀█ ██▒
  ▒██    ▒██   ▒██   ██░  ▒██▀▀█▄    ▒██▄█▓▒    ░██░  ▒██   ██░  ▓██▒  ▐▌██▒
  ▒██▒   ░██▒  ░████▓▒░   ░██▓ ▒██▒  ▒██▒ ░     ░██░  ░ ████▓▒░  ▒██░   ▓██░
  ░ ▒░    ░░    ▒░▒░▒░ ░   ▒▓ ░▒▓░▒  ▓▒░ ░      ░▓ ░  ▒░▒░▒░ ░    ▒░    ▒ ▒ 
  ░  ░      ░   ░ ▒ ▒░     ░▒ ░ ▒░   ░▒ ░        ▒ ░  ░ ▒ ▒░  ░   ░░   ░ ▒░
  ░      ░   ░  ░ ░ ▒      ░░   ░ ░░             ▒ ░  ░ ░ ▒       ░   ░ ░ 
        ░        ░ ░      ░                 ░       ░ ░           ░ 
                                                                
  "
 
  game_1 = Game.new

  game_1.perform
  
  puts "\n\nFINISH! (y/n)"
  puts "Would you like to start a new game? (y/n)"
  restart = gets.chomp
  break if restart != 'y'
 
  end

end