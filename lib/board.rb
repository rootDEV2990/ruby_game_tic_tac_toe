class Board
  attr_accessor :board

  def initialize
    @board = Array.new(9, ' ')
  end

  def game_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts '-----------'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '-----------'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def change_index(position, index)
    @board[position] = index
  end

  def position_taken?(position)
    @board[position] == 'X' || @board[position] == 'O'
  end
      end
