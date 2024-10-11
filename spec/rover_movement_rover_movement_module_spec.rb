require_relative '../rover_movement_module'

RSpec.describe "Validate rover movements" do

    context "To validate if the rover is functional by turning left" do
        it "matches the value of final direction of the rover face with the expected value" do
            expect(move_rover('N')).to eq('W')
        end
    end

    context "to validate if the rover turns as expected in left direction" do
        it "should match the value of final direction of the rover face in all the directions with expected values" do
            expect(turn_rover_left('N')).to eq('W')
        end
    end

end