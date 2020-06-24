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
  player1 = gets.chop
  puts 'player_2 put your name'
  player2 = gets.chop
  @p1 = player1
  @p2 = player2
  "#{player1} will be Xs and #{player2} will be Os"
end

puts player_asign

# variables not commin in need to rewrite inizializer variables with results from player asign method
def player_move
  player_1_moves = []
  player_2_moves = []
  turn = 'X'
  end_game = 1
  board = %w[1 2 3 4 5 6 7 8 9]
  index = 0
  loop do
    # turns not changing players initializer player one is nil
    puts game_board(board)
    if turn == 'X'
      p "#{@p1} Select Cell to re-write (1-9)"
      input = gets.chomp.to_i
      player_1_moves << input
      index = (input - 1)
      board[index].replace 'X'
      turn = 'O'
    else
      p "#{@p2} Select Cell to re-write (1-9)"
      input = gets.chomp.to_i
      player_2_moves << input
      index = (input - 1)
      board[index].replace 'O'
      turn = 'X'
    end
    end_game += 1
    break if end_game == 10
    # break if Game.winner?(game_board.board) != 0 || count == 9
  end
end

puts player_move
