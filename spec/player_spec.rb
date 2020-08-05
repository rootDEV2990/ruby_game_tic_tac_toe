describe Player do
  it 'checks player name' do
    inport_names = Player.new('someone')
    names = inport_names.instance_variable_get(:@name)
    expect(names).to eq('someone')
  end
  it 'checks name of players' do
    input = Player.new('someone')
    name = input.instance_variable_get(:@name)
    expect(name).to be_a String
  end
end
