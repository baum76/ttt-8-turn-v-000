board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board)

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == nil
    false
  else
    true
  end
end

def input_to_index(input)
  input.to_i-1
end

def move(board, index, value)
  board[index] = value
end

move(board, 8, "X")

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, 8, "X")
    display_board(board)
  else
    turn(board)
    
  end
end
