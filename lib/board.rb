class Board
  attr_accessor :board

  def initialize
    @board = Array.new(9, ' ')
  end

  def game_board
    play_board = [
      " #{@board[0]} | #{@board[1]} | #{@board[2]} ",
      '-----------',
      " #{@board[3]} | #{@board[4]} | #{@board[5]} ",
      '-----------',
      " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    ]
    play_board.join("\n") + "\n"
  end

  def change_index(position, index)
    @board[position] = index
  end

  def position_taken?(position)
    @board[position] == 'X' || @board[position] == 'O'
  end
end
