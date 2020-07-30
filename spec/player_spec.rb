require './lib/board.rb'
require './lib/player.rb'

RSpec.describe Player do
  context '#initialize' do
    it 'does not raise an error when initialized with a valid input' do
      input = { name: 'Someone' }
      expect { Player.new(input) }.to_not raise_error
    end
  end
  it 'checks name of players' do
    input = Player.new('someone')
    name = input.instance_variable_get(:@name)
    expect(name).to be_a String
  end
end
