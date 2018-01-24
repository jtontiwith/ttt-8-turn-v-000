
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#display_board([" "," "," "," "," "," "," "," "," "])

def valid_move?(board, index)
  if index.between?(0,8) == true && position_taken?(board, index) == false
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

def input_to_index(p_input)
  p_input = p_input.to_i - 1
  puts p_input
end

def move(b_array, pmove, p_char = "X")
  b_array[pmove] = p_char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
end
