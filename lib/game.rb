class Game
  attr_accessor :player1, :player2, :turn, :board, :count_turn, :winner, :winning_combinations

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board

    @count_turn = 1
    @turn1 = ''
    @winner = ''
    player_asign
  end

  def play
    who_turn
    player_move
  end

  def who_turn
    @turn1 = [@player1.name, @player2.name].sample
    puts "#{@turn1} will be Xs!\n\n\n\n"
  end

  def player_asign
    @player1.data = 'X'
    @player2.data = 'O'
  end

  # rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity

  def player_move
    until draw? || @winner != ''
      if @turn1 == @player1.name
        @count_turn.even? ? play_game(@player2) : play_game(@player1)
      else
        @count_turn.even? ? play_game(@player1) : play_game(@player2)
      end
    end
    puts 'Game is a draw!' if draw?
  end

  # rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity

  def play_game(player)
    puts 'TicTacToe Board'.center(10)
    puts "---------------------------\n\n\n"
    puts @board.game_board
    puts
    puts
    puts "---------------------------\n\n\n"
    @board.change_index(valid_move(player), player.data)
    who_win(player)
    @count_turn += 1
  end

  def valid_move(player)
    input = 0
    until valid_input?(input)
      print "#{player.name}, Select Cell to re-write (1-9): "
      input = gets.chomp.to_i
      print 'Invalid input! ' unless valid_input?(input)
      puts 'This number is out of range (1-9)' unless input.positive? && input < 10
      p puts 'Cell already used.' if @board.position_taken?(input - 1)
    end
    input - 1
  end

  def who_win(player)
    check_if_won(player)
    return unless @winner == player.name

    print "#{player.name} won!"
    puts "\u{1f600}"
  end

  def draw?
    (@count_turn == @board.board.length) && (@winner == '')
  end

  def check_if_won(player)
    @winning_combinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [2, 4, 6],
      [0, 4, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ]
    @winning_combinations.each do |triplet|
      @winner = player.name if triplet.all? { |a| @board.board[a] == player.data }
    end
    @winner
  end

  def valid_input?(input)
    input.positive? && input < 10 && !@board.position_taken?(input - 1)
  end
end
