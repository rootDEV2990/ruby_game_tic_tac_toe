require './lib/board.rb'
require './lib/player.rb'
require './lib/game.rb'

describe Game do
  describe '.check_if_won' do
    it 'Checks that winner is not empty' do
      @name1 = 'someone'
      @name2 = 'someone'
      rewrite_board = %w[X X X O 5 6 7 8 9]

      board = Board.new
      board.board = rewrite_board
      player1 = Player.new(@name1)
      player2 = Player.new(@name2)
      game = Game.new(player1, player2, board)
      expect(game.check_if_won(player1)).to eql('someone')
    end
  end

  describe '.draw?' do
    it 'Checks if winner is empty and moves are full' do
      @name1 = 'someone'
      @name2 = 'someone'
      rewrite_board = %w[X O X O X X O X O]
      board = Board.new
      board.board = rewrite_board
      player1 = Player.new(@name1)
      player2 = Player.new(@name2)
      game = Game.new(player1, player2, board)
      game.count_turn = 9
      expect(game.draw?).to be true
    end
  end
end
