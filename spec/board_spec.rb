require './lib/board.rb'
require './lib/player.rb'

describe Board do
  before do
    allow($stdout).to receive(:write)
  end

  let(:board) { Board.new }

  describe 'when initialized' do
    context 'it first' do
      it 'creates an instance array' do
        expect(board.board).to be_an_instance_of(Array)
      end
    end
    it 'creates the board' do
      expect(board.board).to eq(@board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end

    describe '.change_index' do
      it 'change index' do
          input = Board.new
          p X = input.change_index(5, "x")
          p Y = $board
          p input.instance_variable_get(:@board)
          expect(X).not_to eq(Y)

      end
  end
  end
end
