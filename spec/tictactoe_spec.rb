require './lib/board.rb'
require './lib/player.rb'
require './lib/game.rb'

describe './bin/main' do
  it 'prints "Welcome to Tic Tac Toe!"' do
    allow($stdout).to receive(:puts)
  end

  it 'calls #play passing in the board array' do
    allow($stdout).to receive(:puts)
  end

  it 'asks for players input on a turn of the game' do
    allow($stdout).to receive(:puts)
  end
end
