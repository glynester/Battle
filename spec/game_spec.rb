require 'spec_helper'

describe Game do
  subject(:game) { described_class.new }
  let(:dave) { double :dave }
  let(:mittens) { double :mittens }

  describe '#attack' do
    it 'calls take_damage on the opponent' do
      expect(mittens).to receive(:take_damage)
      game.attack(mittens)
    end
  end
end
