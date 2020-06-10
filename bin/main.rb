#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'

puts "-----------------------".center(50)
puts 'Welcome to Tic Tac Toe!'.center(50)
puts "-----------------------".center(50)
puts

puts 'Create by Josue Abraham and MiguelEnciso'.center(50)
puts

puts 'Please enter the name of player 1'.center(50)
player_1 = gets.chomp
puts 'Please enter the name of player 2'.center(50)
player_2 = gets.chomp

# a method into which we can pass user input
def input_indice(user_input)
    user_input.to_i - 1
end

# the index in the `@board` array that the player chooses (X or Y)
def move(index, player = "X")
    @board[index] = player
end

# method will be responsible for evaluating the user's desired move.
def position?(location)
    @board[location] != " " && @board[location] != ""
end

# that accepts a position to check  if the move is correct
def move?(index)
    index.between?(0,8) && !position?(index)
end

# Receive the user's input
def turn
 puts "Please enter 1-9:"
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
def palyer_count
    @board.count{|cell| cell == "X" || cell == "O"}
end

# method to determine if it is `"X"`'s or `"O"`'s turn
def player
    player_count.even? ? "X" : "O"
end



  
def game_board(query)
    board = query
    puts ' ---+---+--- '
    puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
    puts ' ---+---+--- '
    puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
    puts ' ---+---+--- '
    puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
    puts ' ---+---+--- '
  end

  




player_1 = ''
player_2 = ''



    
        @player_input = ''
        @player_1 = ''
        @player_2 = ''
        @player_1_moves = []
        @player_2_moves = []
    

    def player_asign
        p "player_1 select your weapon... X or O."
        @player_input = gets.chop.upcase.to_s
        @player_a = @player_input
        if @player_a == 'X' 
            @player_a = 'X'
            @player_2 = 'O'
            "Player_1 will be #{@player_a} and Player_2 will be #{@player_2}"
        else
            @player_1 = 'O'
            @player_2= 'X'
            "Player_1 will be #{@player_1} and Player_2 will be #{@player_2}"
        end
    end

    puts player_asign

    #variables not commin in need to rewrite inizializer variables with results from player asign method
    def player_move
        table = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        turn = @player_1
        9.times do
            #turns not changing players initializer player one is nil
            if turn == @player_1
                puts game_board(table)
                p "Player One Select Cell to re-write (1-9)"
                @player_1_moves << gets.chomp.to_i
                turn = @player_2
            else
                puts game_board(table)
                p "Player Two Select Cell to re-write (1-9)"
                @player_2_moves << gets.chomp.to_i
                turn = @player_1
            end
            p "player 1 moves#{@player_1_moves}"
            p "player 1 moves#{@player_2_moves}"
        end    
    end
    puts player_move







