
require './lib/board.rb'
require './lib/player.rb'

describe Board do
    describe '.initialize' do
        it "produces a board with nine spaces" do
            $inport_board = Board.new
            expect($inport_board.board.length).to eql(9)
        end
    end
    describe '.change_index' do
        it 'change index 0 from " " to "x"' do
            inport_board = Board.new
            inport_board.change_index(0, "x")
            expect(inport_board.board).to eq(["x", " ", " ", " ", " ", " ", " ", " ", " "])
        end
        it 'change index 0 from " " to "o"' do
            inport_board = Board.new
            inport_board.change_index(0, "o")
            expect(inport_board.board).to eq(["o", " ", " ", " ", " ", " ", " ", " ", " "])
        end
        it 'change index 1 from " " to "x"' do
            inport_board = Board.new
            inport_board.change_index(1, "x")
            expect(inport_board.board).to eq([" ", "x", " ", " ", " ", " ", " ", " ", " "])
        end
        it 'change index 1 from " " to "o"' do
            inport_board = Board.new
            inport_board.change_index(1, "o")
            expect(inport_board.board).to eq([" ", "o", " ", " ", " ", " ", " ", " ", " "])
        end
        it 'change index 2 from " " to "x"' do
            inport_board = Board.new
            inport_board.change_index(2, "x")
            expect(inport_board.board).to eq([" ", " ", "x", " ", " ", " ", " ", " ", " "])
        end
        it 'change index 2 from " " to "o"' do
            inport_board = Board.new
            inport_board.change_index(2, "o")
            expect(inport_board.board).to eq([" ", " ", "o", " ", " ", " ", " ", " ", " "])
        end
        it 'change index 3 from " " to "x"' do
            inport_board = Board.new
            inport_board.change_index(3, "x")
            expect(inport_board.board).to eq([" ", " ", " ", "x", " ", " ", " ", " ", " "])
        end
        it 'change index 3 from " " to "o"' do
            inport_board = Board.new
            inport_board.change_index(3, "o")
            expect(inport_board.board).to eq([" ", " ", " ", "o", " ", " ", " ", " ", " "])
        end

        it 'change index 4 from " " to "x"' do
            inport_board = Board.new
            inport_board.change_index(4, "x")
            expect(inport_board.board).to eq([" ", " ", " ", " ", "x", " ", " ", " ", " "])
        end
        it 'change index 4 from " " to "o"' do
            inport_board = Board.new
            inport_board.change_index(4, "o")
            expect(inport_board.board).to eq([" ", " ", " ", " ", "o", " ", " ", " ", " "])
        end
        it 'change index 5 from " " to "x"' do
            inport_board = Board.new
            inport_board.change_index(5, "x")
            expect(inport_board.board).to eq([" ", " ", " ", " ", " ", "x", " ", " ", " "])
        end
        it 'change index 5 from " " to "o"' do
            inport_board = Board.new
            inport_board.change_index(5, "o")
            expect(inport_board.board).to eq([" ", " ", " ", " ", " ", "o", " ", " ", " "])
        end
        it 'change index 6 from " " to "x"' do
            inport_board = Board.new
            inport_board.change_index(6, "x")
            expect(inport_board.board).to eq([" ", " ", " ", " ", " ", " ", "x", " ", " "])
        end
        it 'change index 6 from " " to "o"' do
            inport_board = Board.new
            inport_board.change_index(6, "o")
            expect(inport_board.board).to eq([" ", " ", " ", " ", " ", " ", "o", " ", " "])
        end
        it 'change index 7 from " " to "x"' do
            inport_board = Board.new
            inport_board.change_index(7, "x")
            expect(inport_board.board).to eq([" ", " ", " ", " ", " ", " ", " ", "x", " "])
        end
        it 'change index 7 from " " to "o"' do
            inport_board = Board.new
            inport_board.change_index(7, "o")
            expect(inport_board.board).to eq([" ", " ", " ", " ", " ", " ", " ", "o", " "])
        end
        it 'change index 8 from " " to "x"' do
            inport_board = Board.new
            inport_board.change_index(8, "x")
            expect(inport_board.board).to eq([" ", " ", " ", " ", " ", " ", " ", " ", "x"])
        end
        it 'change index 8 from " " to "o"' do
            inport_board = Board.new
            inport_board.change_index(8, "o")
            expect(inport_board.board).to eq([" ", " ", " ", " ", " ", " ", " ", " ", "o"])
        end
    end

    describe '.position_taken?' do
        # it "Check if the index contains X or O" do
        #      $inport_board.change_index(6, "o")
        #   p  changed_board = $inport_board.board
        #    p   $inport_board.position_taken?(6)
        #    p Board.position_taken?(0)
        #    p $inport_board
        # end
        it 'change index 8 from " " to "o"' do
            inport_board = Board.new
            inport_board.change_index(8, "x")
           p changed_board = inport_board.position_taken?(8)
            # expect(inport_board.board).to eq([" ", " ", " ", " ", " ", " ", " ", " ", "o"])
        end
    end
    
end

describe Player do
    it "checks player name" do
        inport_names = Player.new("miguel")
        names = inport_names.instance_variable_get(:@name)
        expect(names).to eq("miguel")
    end
end