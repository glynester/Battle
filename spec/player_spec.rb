require 'spec_helper'

describe Player do
  subject(:dave) {described_class.new('Dave')}

  describe '#name' do
    it 'returns the name of the player' do
      expect(dave.name).to eq 'Dave'
    end

  end


end
