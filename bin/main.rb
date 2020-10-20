# Display a welcome message.

#
# The Game Loop.
#
# 1. Display the board.
# 2. Prompt each player for token ('X' or 'O').
# 3. Determine which player turn it is.
# 4. Prompt player to select a valid number for a cell position (1 - 9).
# 5. if valid, update the board and switch turns
# 6. else prompt player to type-in a valid number.
# 7. if draw, display a message that says selected move is a draw move
# 8. if win, display a message that says selected move is a winning move
# 9. Reset, Exit on win or draw or go back to  1.

puts 'WELCOME TO THIS TIC-TAC-TOE GAME: created by: '

puts 'Player Enter your token of choice: X or O '
Player1 = gets.chomp

puts "Press 'ENTER' to begin"
gets

class TicTacToe
  attr_accessor :board

  def initialize
    @board = Array.new(9, ' ')
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts " ----------- "
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts " ----------- "
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end
# puts "\nPlayer 1:"
# Player1 = gets.chomp

# puts "\nPlayer 2:"
# Player2 = gets.chomp

# board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

# def display_board(board)
#   %(#{board[0]} | #{board[1]} | #{board[2]}
# ----------
# #{board[3]} | #{board[4]} | #{board[5]}
# ----------
# #{board[6]} | #{board[7]} | #{board[8]}
#   )
# end

# game_piece = 'X'

# loop do
#   puts display_board(board)
#   square_number = gets.chomp.to_i
#   board[square_number - 1] = game_piece
#   game_piece = game_piece == 'X' ? 'O' : 'X'
# end
