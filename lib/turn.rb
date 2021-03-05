def valid_move?(board, index)
  if !position_taken?(board,index) && index.between?(0, 8)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def display_board(board=[" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1;
end

def move(board, index, value = "X")
    board[index] = value
    return board
end

def request_input()
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  return index

def turn(board)
  request_input()
  valid_move?(board, index)
  if valid_move?
    move(board, index)
  else
    request_input()
end
