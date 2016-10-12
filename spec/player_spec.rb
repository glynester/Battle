require 'spec_helper'

describe Player do
  subject(:dave) {described_class.new('Dave')}
  let(:mittens) {described_class.new('Mittens')}

  describe 'intialize' do

    it 'has a name' do
      expect(dave.name).to eq 'Dave'
    end

    it 'has a HP score' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HP
    end

  end
  
  describe '#attack' do
    
    it 'calls take_damage on the opponent' do
      expect(mittens).to receive(:take_damage)
      dave.attack(mittens)
    end
  
  end
  
  describe '#take_damage' do
    it 'reduces the oponents score by 10' do
      expect{mittens.take_damage}.to change{mittens.hit_points}.by(-10)
    end
    
  end

end
