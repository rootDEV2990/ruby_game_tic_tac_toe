#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'


    class Tictactoe
      attr_accessor :name_1, :name_2, :base
  
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
        @name_1 = gets.chomp
        puts " "
        puts 'player_2 put your name'
        @name_2 = gets.chomp
        puts " "
      end
  
      def playing
        start_game
        replay
      end
  
      def start_game 
        board = Board.new
        player_1, player_2 = Player.new(@name_1), Player.new(@name_2)
        game = Game.new(player_1, player_2, board)
      end
  
  
      def replay 
        choice = nil
        until choice == "Y" or choice == "N"
          puts "Would you like to play another round? (Y/N): "
          choice = gets.chomp.upcase
        end
        case choice
        when "Y"
          start_game
        when "N"
          puts "Thank you for playing, we hope to see you soon!"
          puts
          puts '************************************************'
        end
      end
    end
  
  
Tictactoe.new