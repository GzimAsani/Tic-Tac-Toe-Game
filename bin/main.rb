# Display a welcome message.

#
# The Game Loop.
#
# 1. Display the board.
# 2. Randomly pick give token ('X' or 'O') to any player.
# 3. Determine which player to start the game and turn it is.
# 4. Prompt player to select a valid number for a cell position (1 - 9).
# 5. Determine if cell position is taken and valid.
# 6. if valid, update the board and switch turns
# 7. else prompt player to type-in a valid number.
# 8. if draw, display a message that says selected move is a draw move
# 9. if win, display a message that says selected move is a winning move
# 10. Reset, Exit on win or draw or go back to  1.

puts 'WELCOME TO THIS TIC-TAC-TOE GAME: created by: '

puts "Press 'ENTER' to begin"
gets

class Board
  attr_accessor :inputs
  @inputs = []
  
  def initialize
  @inputs = [[" "," "," "],[" "," "," "],[" "," "," "]]
  end
  
  def board_display
  system "clear"
  
  puts ""
  puts " |‾‾‾‾‾|‾‾‾‾‾|‾‾‾‾‾|"
  puts " | #{@inputs[0][0]} | #{@inputs[0][1]} | #{@inputs[0][2]} |"
  puts " |7____|8____|9____|"
  puts " | | | |"
  puts " | #{@inputs[1][0]} | #{@inputs[1][1]} | #{@inputs[1][2]} |"
  puts " |4____|5____|6____|"
  puts " | | | |"
  puts " | #{@inputs[2][0]} | #{@inputs[2][1]} | #{@inputs[2][2]} |"
  puts " |1____|2____|3____|"
  puts ""
  
  end
end

  
