require_relative '../rover_movement_module'

RSpec.describe "Validate rover movements" do

    context "Validate if the rover is functional by turning left" do
        it "matches the value of final direction of the rover face with the expected value" do
            expect(turns_left('N')).to eq('W')
        end
    end
end