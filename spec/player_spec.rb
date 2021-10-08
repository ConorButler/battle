require 'player'

describe Player do
  player1 = Player.new("PLAYER1")
  player2 = Player.new("PLAYER2")

  it 'has a name' do
    expect(player1.name).to eq("PLAYER1")
  end

  it 'has hitpoints' do
    expect(player1.hp).to eq(described_class::DEFAULT_HP)
  end
  
  it 'can attack another player' do
    expect(player2).to receive(:deduct_hp)
    player1.attack(player2)
  end

  it 'deducts hp' do
    expect{ player1.deduct_hp(20) }.to change{ player1.hp }.by(-20)
  end
end
