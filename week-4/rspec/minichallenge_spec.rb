require_relative "../mini-challenge.rb"

describe HoursInAYear do
	describe "calculate_hours_in_year" do
		it "calculates_hours" do
			hours_in_year = HoursInAYear.new
			expect(hours_in_year.calc).to eq 8760
		end
	end
end

describe 