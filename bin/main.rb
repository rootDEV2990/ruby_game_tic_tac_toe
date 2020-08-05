#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

class Tictactoe
  attr_accessor :name1, :name2, :base

  def initialize
    welcome
    playing
  end

  def welcome
    puts
    puts '*******************************'.center(50)
    puts '*          Welcome            *'.center(50)
    puts '*      To Tic Tac Toe         *'.center(50)
    puts '*******************************'.center(50)
    puts

    puts 'Create by Josue Abraham and MiguelEnciso'.center(50)
    puts
    puts 'player_1 put your name'
    @name1 = gets.chomp
    puts ' '
    puts 'player_2 put your name'
    @name2 = gets.chomp
    puts ' '
  end

  def playing
    start_game
    replay
  end

  def start_game
    board = Board.new
    player1 = Player.new(@name1)
    player2 = Player.new(@name2)
    starting = Game.new(player1, player2, board)
    starting.play
  end

  def replay
    loop do
      choice = nil
      until choice.is_a? String
        puts 'Would you like to play another round? (Y/N): '
        choice = gets.chomp.upcase
      end
      if choice == 'Y'
        start_game
        choice = nil
      elsif choice == 'N'
        puts 'Thank you for playing, we hope to see you soon!'
        puts
        puts '************************************************'
      end
      break if choice == 'N'
    end
  end
end

Tictactoe.new