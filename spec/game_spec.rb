require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double("Player1") }
  let(:player2) { double("Player2") }

  it 'stores the first player' do
    expect(game.player1).to eq(player1)
  end
  
  it 'stores the second player' do
    expect(game.player2).to eq(player2)
  end

  it 'can attack another player' do
    expect(player2).to receive(:deduct_hp)
    game.attack(player2)
  end
end
