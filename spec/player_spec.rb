require 'spec_helper'

describe Player do
  subject(:dave) {described_class.new('Dave')}

  describe 'intialize' do

    it 'has a name' do
      expect(dave.name).to eq 'Dave'
    end

    it 'has a HP score' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HP
    end

  end

end
