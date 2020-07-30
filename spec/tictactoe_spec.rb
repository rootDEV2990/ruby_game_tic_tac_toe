require './lib/board.rb'
require './lib/player.rb'

describe Board do
  describe '.initialize' do
    it 'produces a board with nine spaces' do
      inport_board = Board.new
      expect(inport_board.board.length).to eql(9)
    end
  end
  describe '.change_index' do
    it 'change index 0 from " " to "X"' do
      inport_board = Board.new
      inport_board.change_index(0, 'X')
      expect(inport_board.board).to eq(['X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
    it 'change index 0 from " " to "O"' do
      inport_board = Board.new
      inport_board.change_index(0, 'O')
      expect(inport_board.board).to eq(['O', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
    it 'change index 1 from " " to "X"' do
      inport_board = Board.new
      inport_board.change_index(1, 'X')
      expect(inport_board.board).to eq([' ', 'X', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
    it 'change index 1 from " " to "O"' do
      inport_board = Board.new
      inport_board.change_index(1, 'O')
      expect(inport_board.board).to eq([' ', 'O', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
    it 'change index 2 from " " to "X"' do
      inport_board = Board.new
      inport_board.change_index(2, 'X')
      expect(inport_board.board).to eq([' ', ' ', 'X', ' ', ' ', ' ', ' ', ' ', ' '])
    end
    it 'change index 2 from " " to "O"' do
      inport_board = Board.new
      inport_board.change_index(2, 'O')
      expect(inport_board.board).to eq([' ', ' ', 'O', ' ', ' ', ' ', ' ', ' ', ' '])
    end
    it 'change index 3 from " " to "X"' do
      inport_board = Board.new
      inport_board.change_index(3, 'X')
      expect(inport_board.board).to eq([' ', ' ', ' ', 'X', ' ', ' ', ' ', ' ', ' '])
    end
    it 'change index 3 from " " to "O"' do
      inport_board = Board.new
      inport_board.change_index(3, 'O')
      expect(inport_board.board).to eq([' ', ' ', ' ', 'O', ' ', ' ', ' ', ' ', ' '])
    end

    it 'change index 4 from " " to "X"' do
      inport_board = Board.new
      inport_board.change_index(4, 'X')
      expect(inport_board.board).to eq([' ', ' ', ' ', ' ', 'X', ' ', ' ', ' ', ' '])
    end
    it 'change index 4 from " " to "O"' do
      inport_board = Board.new
      inport_board.change_index(4, 'O')
      expect(inport_board.board).to eq([' ', ' ', ' ', ' ', 'O', ' ', ' ', ' ', ' '])
    end
    it 'change index 5 from " " to "X"' do
      inport_board = Board.new
      inport_board.change_index(5, 'X')
      expect(inport_board.board).to eq([' ', ' ', ' ', ' ', ' ', 'X', ' ', ' ', ' '])
    end
    it 'change index 5 from " " to "O"' do
      inport_board = Board.new
      inport_board.change_index(5, 'O')
      expect(inport_board.board).to eq([' ', ' ', ' ', ' ', ' ', 'O', ' ', ' ', ' '])
    end
    it 'change index 6 from " " to "X"' do
      inport_board = Board.new
      inport_board.change_index(6, 'X')
      expect(inport_board.board).to eq([' ', ' ', ' ', ' ', ' ', ' ', 'X', ' ', ' '])
    end
    it 'change index 6 from " " to "O"' do
      inport_board = Board.new
      inport_board.change_index(6, 'O')
      expect(inport_board.board).to eq([' ', ' ', ' ', ' ', ' ', ' ', 'O', ' ', ' '])
    end
    it 'change index 7 from " " to "X"' do
      inport_board = Board.new
      inport_board.change_index(7, 'X')
      expect(inport_board.board).to eq([' ', ' ', ' ', ' ', ' ', ' ', ' ', 'X', ' '])
    end
    it 'change index 7 from " " to "O"' do
      inport_board = Board.new
      inport_board.change_index(7, 'O')
      expect(inport_board.board).to eq([' ', ' ', ' ', ' ', ' ', ' ', ' ', 'O', ' '])
    end
    it 'change index 8 from " " to "X"' do
      inport_board = Board.new
      inport_board.change_index(8, 'X')
      expect(inport_board.board).to eq([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'X'])
    end
    it 'change index 8 from " " to "O"' do
      inport_board = Board.new
      inport_board.change_index(8, 'O')
      expect(inport_board.board).to eq([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'O'])
    end
  end

  describe '.position_taken?' do
    it 'will check if position was taken' do
      inport_board = Board.new
      inport_board.change_index(7, 'O')
      expect(inport_board.position_taken?(7)).to be true
    end
  end
end

describe Player do
  it 'checks player name' do
    inport_names = Player.new('miguel')
    names = inport_names.instance_variable_get(:@name)
    expect(names).to eq('miguel')
  end
end
