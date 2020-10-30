require_relative '../lib/player'

RSpec.describe Player do
  let(:start) { Player.new('Gzim', 'X') }
  describe 'Player' do
    it 'Should return the name and the letter of the player' do
      expect(start.name).to eql('Gzim')
    end
    it 'Should return the symbol of the player' do
      expect(start.letter).to eql('X')
    end
    it 'Should return an empty array' do
      expect(start.array).to eql([])
    end
  end
end
