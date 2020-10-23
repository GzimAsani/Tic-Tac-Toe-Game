#!/usr/bin/env ruby
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

new_game = Game.new
gameboard_inputs = new_game.game_array
def start_game(play_game, array_game)
  name = ''
  puts 'Welcome to Tic Tac Toe', ''
  puts 'This game is created by Gzim Asani and Oluwaseun Iyadi', ''
  sleep(2)
  loop do
    puts 'Player1 can you tell us your name'
    name = gets.chomp
    break if name != '' && name != ' '
  end
  play_game.first_player.name = name
  puts "Greetings #{play_game.first_player.name} you will be playing as #{play_game.first_player.letter}"
  loop do
    puts 'Player2 can you tell us your name'
    name = gets.chomp
    break if name != '' && name != ' '
  end
  play_game.second_player.name = name
  puts "Greetings #{play_game.second_player.name} you will be playing as #{play_game.second_player.letter}"
  puts 'Take a look at the game board!'
  game_board(array_game)
end

def game_board(gameboard_inputs)
  9.times do |items|
    print "#{gameboard_inputs[items]} | " if items % 3 != 2
    puts "#{gameboard_inputs[items]} |" if items % 3 == 2
  end
end

def moving(player_name, position1)
  loop do
    puts "Hello, #{player_name.name} it is your turn to play"
    position1 = gets.chomp.to_i
    break if check_the_move(position1, player_name.letter)
  end
  player_name.array.push(position1)
end

def winner(player)
  puts "And the winner for this game is.... #{player}!"
end

def draw
  puts 'Strong challenge it is a draw!'
end

def check_the_move(position, letter)
  case position
  when 1..9
    if @game_array[position - 1].is_a?(Integer)
      @game_array[position - 1] = letter
      true
    else
      puts 'Please pick an empty position!'
      false
    end
  else
    puts 'Please pick a valid position!'
    false
  end
end

start_game(new_game, gameboard_inputs)
new_game.starting
