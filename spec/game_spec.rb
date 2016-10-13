#require 'spec_helper'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player_1 }
  let(:player2) { double :player_2 }

  describe "initialize" do
    it "accepts 2 player instances" do
      expect(game.player_1).to eq player1
    end
  end

  describe '#attack' do
    it 'calls take_damage on the opponent' do
      expect(player2).to receive(:take_damage)
      game.attack(player2)
    end
  end
end
