require 'spec_helper'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe "initialize" do
    it "accepts 2 player instances" do
      
      expect(game.player_1).to eq player_1
      
    end
    
  end

  describe '#attack' do
    it 'calls take_damage on the opponent' do
      expect(player_2).to receive(:take_damage)
      game.attack(player_2)
    end
  end
end
