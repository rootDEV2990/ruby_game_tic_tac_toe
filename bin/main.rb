#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'

puts
puts '*******************************'.center(50)
puts '*          Welcome            *'.center(50)
puts '*      To Tic Tac Toe         *'.center(50)
puts '*******************************'.center(50)
puts

puts 'Create by Josue Abraham and MiguelEnciso'.center(50)
puts

def game_board(board)
  puts ' ---+---+--- '.center(40)
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |".center(40)
  puts ' ---+---+--- '.center(40)
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |".center(40)
  puts ' ---+---+--- '.center(40)
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |".center(40)
  puts ' ---+---+--- '.center(40)
end

@p1 = ''
@p2 = ''

def player_asign
  puts 'player_1 put your name'
  player_1 = gets.chop.upcase
  puts 'player_2 put your name'
  player_2 = gets.chop.upcase
  @p1 = player_1
  @p2 = player_2
  "#{player_1} will be Xs and #{player_2} will be Os"
end

puts player_asign

# variables not commin in need to rewrite inizializer variables with results from player asign method
def player_move
  player_1_moves = []
  player_2_moves = []
  turn = 'X'
  end_game = 0
  board = %w[1 2 3 4 5 6 7 8 9]
  loop do
    index = 0
    # turns not changing players initializer player one is nil
    if turn == 'X'
      puts game_board(board)
      p "#{@p1} Select Cell to re-write (1-9)"
      input = gets.chomp.to_i
      player_1_moves << input
      index = (input - 1)
      board[index].replace 'X'
      turn = 'O'
      end_game += 1
    else
      puts game_board(board)
      p "#{@p2} Select Cell to re-write (1-9)"
      input = gets.chomp.to_i
      player_2_moves << input
      index = (input - 1)
      board[index].replace 'O'
      turn = 'X'
      end_game += 1
    end
    break if end_game == 10
  end
end

puts player_move

#---------------------------

# def initialize(board = nil)
#     @board = board || Array.new(9, " ")
# end

# Define your WIN_COMBINATIONS constant
WIN_CONDITIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [2, 4, 6],
  [0, 4, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
].freeze

# a method into which we can pass user input
def input_indice(user_input)
  user_input.to_i - 1
end

# the index in the `@board` array that the player chooses (X or O)
def move(index, player = 'X')
  @board[index] = player
end

# method will be responsible for evaluating the user's desired move.
def position?(location)
  @board[location] != ' ' && @board[location] != ''
end

# that accepts a position to check  if the move is correct
def move?(index)
  index.between?(0, 8) && !position?(index)
end

# Receive the user's input
def turn
  puts 'Please enter 1-9:'
  input = gets.strip
  index = input_indice(input)
  if move?(index)
    make_move(index, player)
    display_board
  else
    turn
  end
end

# returns the number of turns
def player_count
  @board.count { |cell| cell == 'X' || cell == 'O' }
end

# method to determine if it is `"X"`'s or `"O"`'s turn
def player
  player_count.even? ? 'X' : 'O'
end

def won?
  if @board.all? { |index| index == ' ' }
    false
  else
    WIN_CONDITIONS.each do |win_condition|
      if win_condition.all? { |cell| @board[cell] == 'X' } or win_condition.all? { |cell| @board[cell] == 'O' }
        return win_condition
      end
    end
    false
  end
 end

# full? return true if board contains only X or O
def full?
  @board.all? { |position| position == 'X' or position == 'O' }
end

def draw?
  if won? == false and full?
    true
  else
    false
  end
end

# over? return true if the game is draw or if is won
def over?
  return true if draw? == true or won? != false
end

def winner
  @board[won?[0]] if won? != false
end

# play
def play_game
  # input = gets
  turn until over? == true

  if winner == 'X' or winner == 'O'
    puts "Congratulations #{winner}!"
  else
    puts "Cat's Game!"
  end
end
