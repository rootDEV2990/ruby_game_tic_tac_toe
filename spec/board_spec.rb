
require './lib/board.rb'
require './lib/player.rb'

describe Board do
    it "produces a board with nine spaces" do
        inport_board = Board.new
        board = inport_board.instance_variable_get(:@board)
        expect(board.length).to eql(9)
    end
end

describe Player do
    it "checks player name" do
        inport_names = Player.new("miguel")
        names = inport_names.instance_variable_get(:@name)
        expect(names).to be_a String
    end
end