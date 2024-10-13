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

    context "to validate if the rover moves forward in any direction" do
        it "should match the final face position with the expected final position" do
            expect(move_rover_in_any_direction(1, 2,'N')).to eq([1,3])
        end
    end

    context "to validate if the rover's final position after after a series of instructions" do
        it "should match the final position after a series of movements with the expected final position" do
            expect(move_rover_to_new_position(1, 2,'N', 'LMLMLMLMM')).to eq([1,3,'N'])
        end
    end

    context "to validate if the rover within plateau coordinates"do
        it "should find out the final position of the rover and see if it's within plateau" do
            expect(move_rover_to_new_position_within_coordinates(5,5,1, 2,'N', 'LMLMLMLMM')).to eq(true)
        end

        it("should find out final position after movement and raise error if it went out of plateau") do
            expect(move_rover_to_new_position_within_coordinates(5,5,6, 2,'N', 'LMLMLMLMMMMMMMMMMMMMM')).to eq(false)
        end
    end

    context "to validate if the rover could fly to the new position within plateau" do
        it "should validate the final position with rover size & return trie is it landed on plateau itself " do
            expect(flying_rover(5,5,1,2,'N',3,3)).to eq(true)
        end
    end
end