class TicTacToe
  WIN_COMBINATIONS = [
    [0,1,2], 
    [3,4,5], 
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6],
  ]

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} " 
  end
  
  def input_to_index(user_input)
    user_input.to_i - 1
  end
  
  def move(index, token)
    @board[index] = token
  end
  
  def position_taken?(index)
    if @board[index] == " " || @board[index] == "" || @board[index] == nil
      false
    else
      true
    end
  end
  
  def valid_move?(index)
    !position_taken?(index) && index.between?(0,8)
  end
  
  def turn_count
    @board.count{|square| square != " " }
  end

  def current_player
    turn_count.even? ? "X" : "O"
  end

  def turn
    puts "Please enter a number (1-9):"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(index)
      token = current_player
      move(index, token)
    else
      turn
    end
    display_board
  end
# def on_game_board?(index)
#   valid_indexes = [0,1,2,3,4,5,6,7,8]
  
#   if valid_indexes.include?(index)
#     true
#   else
#     false
#   end
# end

# def valid_move?(board, index)
#   index.between?(0,8) && !position_taken?(board, index)
# end

# def turn(board)
#   puts "Please enter 1-9:"
#   input = gets.strip
#   index = input_to_index(input)
#   if valid_move?(board, index)
#     move(board, index, current_player(board))
#     display_board(board)
#   else
#     puts "Invalid selection, try again"
#     turn(board)
#   end
# end

# def turn_count(board)
#   counter = 0
#   board.each do |slot|
#     if slot != " "
#       counter += 1
#     end
#   end
#   return counter
# end

# def current_player(board)
#   move_count = 0
#   board.each do |slot|
#     if slot != " "
#       move_count += 1
#     end
#   end
  
#   if move_count % 2 == 0
#     "X"
#   else
#     "O"
#   end
end