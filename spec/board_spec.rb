
require './lib/board.rb'
require './lib/player.rb'

describe Board do
    it "produces a board with nine spaces" do
        inport_board = Board.new
        $board = inport_board.instance_variable_get(:@board)
        expect($board.length).to eql(9)
    end
    describe '.change_index' do
        it 'change index' do
            inport_board = Board.new
            p test1 = inport_board.change_index(3, "x")
            p test2 = $board
            p inport_board.instance_variable_get(:@board)
            expect(test1).not_to eq(test2)

        end
    end
end

describe Player do
    it "checks player name" do
        inport_names = Player.new("miguel")
        names = inport_names.instance_variable_get(:@name)
        expect(names).to be_a String
    end
end