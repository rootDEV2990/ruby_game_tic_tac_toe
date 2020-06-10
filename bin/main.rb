#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'

puts
puts "*******************************".center(50)
puts "*          Welcome            *".center(50)
puts "*      To Tic Tac Toe         *".center(50)
puts "*******************************".center(50)
puts

puts 'Create by Josue Abraham and MiguelEnciso'.center(50)
puts

puts 'Please enter the name of player 1'.center(50)
player_1 = gets.chomp
puts 'Please enter the name of player 2'.center(50)
player_2 = gets.chomp

  
def game_board(query)
    board = query
    puts ""
    puts ' ---+---+--- '.center(50)
    puts "| #{board[0]} | #{board[1]} | #{board[2]} |".center(50)
    puts ' ---+---+--- '.center(50)
    puts "| #{board[3]} | #{board[4]} | #{board[5]} |".center(50)
    puts ' ---+---+--- '.center(50)
    puts "| #{board[6]} | #{board[7]} | #{board[8]} |".center(50)
    puts ' ---+---+--- '.center(50)
    puts ""
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


#---------------------------

# def initialize(board = nil)
#     @board = board || Array.new(9, " ")
# end

# Define your WIN_COMBINATIONS constant
WIN_CONDITIONS = [
  [0,1,2],  
  [3,4,5],  
  [6,7,8],  
  [2,4,6],  
  [0,4,8],  
  [0,3,6],  
  [1,4,7],  
  [2,5,8]  
]

# a method into which we can pass user input
def input_indice(user_input)
    user_input.to_i - 1
end

# the index in the `@board` array that the player chooses (X or O)
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
def player_count
    @board.count{|cell| cell == "X" || cell == "O"}
end

# method to determine if it is `"X"`'s or `"O"`'s turn
def player
    player_count.even? ? "X" : "O"
end

def won?
    if @board.all? {|index| index == " "  }
      false
    else
        WIN_CONDITIONS.each do |win_condition|

        if win_condition.all? {|cell| @board[cell] == "X"} or win_condition.all? {|cell| @board[cell] == "O"}
          return win_condition
        end

       end
       return false
    end
 end

 #full? return true if board contains only X or O
 def full?
   @board.all? {|position| position == "X" or position == "O"}
 end

 def  draw?
   if won? == false and full?
     return true
   else
     return false
   end
 end
 #over? return true if the game is draw or if is won
 def over?
    if draw? == true or won? != false
      return true
    end
 end

 def winner
   if won? != false
     @board[won?[0]]
   end
 end

 #play
 def play_game
   #input = gets
   until over? == true
     turn
   end

   if winner == "X" or winner == "O"
     puts "Congratulations #{winner}!"
   else
     puts "Cat's Game!"
   end
 end