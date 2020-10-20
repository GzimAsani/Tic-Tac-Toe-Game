# Display a welcome message.

#
# The Game Loop.
#
# 1. Display the board.
# 2. Randomly pick give token ('X' or 'O') to any player.
# 3. Determine which player to start the game and turn it is.
# 4. Prompt player to select a valid number for a cell position (1 - 9).
# 5. if valid, update the board and switch turns
# 6. else prompt player to type-in a valid number.
# 7. if draw, display a message that says selected move is a draw move
# 8. if win, display a message that says selected move is a winning move
# 9. Reset, Exit on win or draw or go back to  1.

puts 'WELCOME TO THIS TIC-TAC-TOE GAME: created by: '

puts "Press 'ENTER' to begin"
gets

class TicTacToe
  attr_accessor :board, :players

  def initialize
    @board = Array.new(9, ' ')
    @players = { Player1: 'X', Player2: 'O' }
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts ' ----------- '
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts ' ----------- '
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def select_player
    @players.sample
  end

  def user_input
    puts 'Choose a valid number from 1-9'
    gets.strip
  end

  def cell_position(user_input)
    @board[user_input.to_i - 1]
  end
end
