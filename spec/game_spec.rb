require 'spec_helper'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double :player_1 }
  let(:player2) {double :player_2 }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#player_2' do
    it 'retrieves the first player' do
      expect(game.player_2).to eq player2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
  
  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player1
    end
  end
  
  describe "#switch_turns" do
    it "switches the turn" do
      game.switch_turns
      expect(game.current_turn).to eq player2
      
    end
    
  end
end
