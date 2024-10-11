require_relative '../rover_movement_module'

RSpec.describe "Validate rover movements" do

    context "To validate if the rover is functional by turning left" do
        it "matches the value of final direction of the rover face with the expected value" do
            expect(move_rover('N')).to eq('W')
        end
    end

    context "to validate if the rover turns as expected in left direction" do
        it "should match the value of final direction of the rover face in all the directions with expected values, when turned left" do
            expect(turn_rover_left('N')).to eq('W')
        end
    end

    context "to validate if the rover turns right as expected" do
        it "should match the value of final direction of the rover face in all the directions with expected values, when turned right" do
            expect(turn_rover_right('N')).to eq('E')
        end
    end

    context "to validate if the rover moves forward as expected" do
        it "should match the cordinates of the new position when moved 1 step forward" do
            expect(move_rover_forward(1,2)).to eq([1,3])
        end
    end

    context "to validate if the rover's final face direction after after a series of instructions" do
        it "should match the final face position after a series of movements with the expected final face direction" do
            expect(move_rover_in_any_direction(1, 2,'N', 'LMLMLMLMM')).to eq('N')
        end
    end

=begin
    DummyContext
    context "" do
        it "" do
            expect().to eq()
        end
    end
=end
end