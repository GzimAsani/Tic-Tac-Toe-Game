require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
#require_relative '../bin/main.rb'


RSpec.describe Game do
   let(:player) {Game.new}
   let(:first_player){}
   #let(:first_player) {"Tahiry"}
   let(:first_gamer) {Player.new("Tahiry", "X")}
   
   


    describe "#initialize" do
        it "should return the array" do
            expect(player.first_player).to eql(first_gamer)
        end
    end
end