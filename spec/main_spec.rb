RSpec.describe Main do
  describe 'check_who_won' do
    it 'returns true for winning combination [9,7,8]' do
      expect(game.check_who_won([9, 7, 8])).to eql(true)
    end

    it 'returns true for winning combination [1,2,3]' do
      expect(game.check_who_won([1, 2, 3])).to eql(true)
    end

    it 'returns true for winning combination [3,5,7]' do
      expect(game.check_who_won([3, 5, 7])).to eql(true)
    end

    it 'returns true for winning combination [1,5,9]' do
      expect(game.check_who_won([1, 5, 9])).to eql(true)
    end

    it 'returns true for winning combination [2,5,8]' do
      expect(game.win?([2, 5, 8])).to eql(true)
    end

    it 'returns false for faulty combination [1,4,9]' do
      expect(game.win?([1, 4, 9])).to eql(false)
    end

    it 'returns false for faulty combination [1,2,4]' do
      expect(game.win?([1, 2, 4])).to eql(false)
    end

    it 'returns false for faulty combination [3,5,8]' do
      expect(game.win?([1, 2, 4])).to eql(false)
    end

    it 'returns false for faulty combination [3,6,8]' do
      expect(game.win?([1, 2, 4])).to eql(false)
    end

    it 'returns false for faulty combination [3,9,8]' do
      expect(game.win?([1, 2, 4])).to eql(false)
    end
  end

  describe 'draw?' do
    it 'returns true if the @available_cells array is empty' do
      game.available_cells = []
      expect(game.draw?).to eql(true)
    end

    it 'returns false if the @available_cells array is not empty' do
      expect(game.draw?).to eql(false)
    end
  end
end