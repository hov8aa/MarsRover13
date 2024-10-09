require_relative '../rover_movement'

RSpec.describe "Rover Movement Specifications" do
    context "to verify if the rover is functional" do
        it "should validate if the left command turns the rover left" do
            expect(turn_rover_left('N')).to eq('W')
        end
    end
end