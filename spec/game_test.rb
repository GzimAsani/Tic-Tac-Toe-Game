require_relative '../lib/game'
require_relative '../lib/player'

RSpec.describe Game do
  let(:player) { Game.new }
  let(:first_gamer) { Player.new('Tahiry', 'X') }
  let(:second_gamer) { Player.new('Gzim', 'O') }
  let(:arr) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let(:combo) do
    [[1, 2, 3],
     [4, 5, 6],
     [7, 8, 9],
     [1, 4, 7],
     [2, 5, 8],
     [3, 6, 9],
     [1, 5, 9],
     [3, 5, 7]].freeze
  end
  let(:first_gamer_arr) { [2, 5, 9] }
  let(:second_gamer_arr) { [1, 2, 3] }

  describe '#initialize' do
    context 'Player name is given' do
      it 'is an instantiation of the Player class' do
        expect(player.is_a?(player.class.superclass)).to eql(first_gamer.is_a?(Player))
        expect(player.is_a?(player.class.superclass)).to eql(second_gamer.is_a?(Player))
      end
    end

    context 'get access the array' do
      it 'should return the array' do
        expect(player.game_array).to eql(arr)
      end
    end
  end

  describe '#check_win?' do
    context "the given array doesn't include the winning combo" do
      it 'should return false' do
        expect(player.check_win?(combo, first_gamer_arr)).to be(false)
      end
    end

    context 'the given array include the winning combo' do
      it 'should return true' do
        expect(player.check_win?(combo, second_gamer_arr)).to be(true)
      end
    end
  end
end
