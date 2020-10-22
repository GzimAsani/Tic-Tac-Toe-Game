
#!/usr/bin/env ruby
require_relative '../lib/player'
require_relative '../lib/begin'




class Board
  attr_accessor :inputs
  @inputs = []
  
  def initialize
  @inputs = [[" "," "," "],[" "," "," "],[" "," "," "]]
  end
  
  def board_display
  system "clear"
  
  puts ""
  puts "  |‾‾‾‾‾|‾‾‾‾‾|‾‾‾‾‾|"
  puts "  |  #{@inputs[0][0]}  |  #{@inputs[0][1]}  |  #{@inputs[0][2]}  |"
  puts "  |7____|8____|9____|"
  puts "  |     |     |     |"
  puts "  |  #{@inputs[1][0]}  |  #{@inputs[1][1]}  |  #{@inputs[1][2]}  |"
  puts "  |4____|5____|6____|"
  puts "  |     |     |     |"
  puts "  |  #{@inputs[2][0]}  |  #{@inputs[2][1]}  |  #{@inputs[2][2]}  |"
  puts "  |1____|2____|3____|"
  puts ""
  
  end
  
  def pick_cell
    case $chosen_cell
    when 1
      if @inputs[2][0] == " " 
        @inputs[2][0] = "#{$current_player.symbol}"
      else
        return 0
      end
    when 2
      if @inputs[2][1] == " " 
        @inputs[2][1] = "#{$current_player.symbol}"
      else
        return 0
      end
    when 3
      if @inputs[2][2] == " " 
        @inputs[2][2] = "#{$current_player.symbol}"
      else
        return 0
      end
    when 4
      if @inputs[1][0] == " " 
        @inputs[1][0] = "#{$current_player.symbol}"
      else
        return 0
      end
    when 5
      if @inputs[1][1] == " " 
        @inputs[1][1] = "#{$current_player.symbol}"
      else
        return 0
      end  
    when 6
      if @inputs[1][2] == " " 
        @inputs[1][2] = "#{$current_player.symbol}"
      else
        return 0
      end
    when 7
      if @inputs[0][0] == " " 
        @inputs[0][0] = "#{$current_player.symbol}"
      else
        return 0
      end
    when 8
      if @inputs[0][1] == " " 
        @inputs[0][1] = "#{$current_player.symbol}"
      else
        return 0
      end
    when 9
      if @inputs[0][2] == " " 
        @inputs[0][2] = "#{$current_player.symbol}"
      else
        return 0
      end
    end
  end
end

class GamePlay
  attr_reader :board_game

  def initialize()
    @board_game = Board.new
  end

  def game_play
    system "clear"
    puts "Lets play Tic Tac Toe!!!!"
    puts "Player 1, can you tell us your name?"
    $player1 = Player.new(gets.chomp, "X")
    puts = "Greetings, #{$player1.name} you start with the '#{$player1.symbol}'symbol", ""
    puts "Player 2, can you also tell us your name?"
    $player2 = Player.new(gets.chomp, "O")
    puts = "Greetings, #{$player2.name} you start with the '#{$player2.symbol}'symbol", ""
    puts "In order to see who goes first we'll be fair and flip the coin"
    puts "#{$player1.name} you are HEADS and. #{$player2.name} you are TAILS"
    puts "Press enter to flip the coin"
    gets
    puts "Flipped", ""
    sleep(2.0)
    coin = Begin.new 
    $player1.current = coin.flip_the_coin
    $player2.current = !$player1.current
    $player1.who_is_first
    $player2.who_is_first
    gets
  end
  def lets_play
    i = 0
    while i < 9 do
      board_game.board_display
      check_current_player
      puts "#{$current_player.name} it is your turn. Pick a number!"
      $chosen_cell = gets.chomp.to_i
       unless (1..9).include?($chosen_cell) 
        puts "Please choose an open cell starting from number 1 through 9"
        sleep(0.5)
        redo
       end
       if board_game.pick_cell == 0
        puts "Please pick an empty number"
        sleep(0.5)
        redo
       end
       board_game.pick_cell
       $player1.current = !$player1.current
        $player2.current = !$player2.current
        break if self.if_game_over == 0
        i += 1
    end
      board_game.board_display
      puts "It is a darn draw!" if i == 9
  end

  def check_current_player
    if $player1.current == true
      $current_player = $player1
    else
      $current_player = $player2
    end
  end

  def if_game_over
    if (board_game.inputs[0].uniq.count == 1) && (board_game.inputs[0][0] != " ")
      board_game.board_display
      game_finished
    elsif (board_game.inputs[1].uniq.count == 1) && (board_game.inputs[1][0] != " ")
      board_game.board_display
      game_finished
    elsif (board_game.inputs[2].uniq.count == 1) && (board_game.inputs[2][0] != " ")
      board_game.board_display
      game_finished
    elsif (board_game.inputs.transpose[0].uniq.count == 1) && (board_game.inputs.transpose[0][0] != " ")
      board_game.board_display
      game_finished
    elsif (board_game.inputs.transpose[1].uniq.count == 1) && (board_game.inputs.transpose[1][0] != " ")
      board_game.board_display
      game_finished
    elsif (board_game.inputs.transpose[2].uniq.count == 1) && (board_game.inputs.transpose[2][0] != " ")
      board_game.board_display
      game_finished
    elsif (board_game.inputs[0][0] == board_game.inputs[1][1]) && (board_game.inputs[1][1] == board_game.inputs[2][2]) && (board_game.inputs[1][1] != " ")
      board_game.board_display
      game_finished
    elsif (board_game.inputs[0][2] == board_game.inputs[1][1]) && (board_game.inputs[1][1] == board_game.inputs[2][0]) && (board_game.inputs[1][1] != " ")
      board_game.board_display
      game_finished
    end

  end

  def game_finished
    puts "We have a winner! #{$current_player.name} wins the game!"
    puts "Thank you for playing"
    gets
    return 0
  end

end

play = GamePlay.new
play.game_play
play.lets_play