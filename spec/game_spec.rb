#require 'spec_helper'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player_1, hit_points: 50 }
  let(:player2) { double :player_2, hit_points: 50 }
  subject(:gameover) { described_class.new(player1, deadplayer) }
  let(:deadplayer) { double :player_2, hit_points: 0 }

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

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end
  end
  
  context "End of the gane scenarios" do
    describe "returns true if player 2 has lost" do
      it "Ends game if someone's hit_points reaches 0" do
       expect(gameover.game_over?).to eq true
     end
    end
    
    describe "#game_over?" do
      it "does not show game_over if there are no scores at zero" do
        expect(game.game_over?).to eq false
      end
    end
    
    describe "#loser" do
      it "returns the loser of the game" do
        expect(gameover.loser).to eq deadplayer
      end
    end
  end
end


