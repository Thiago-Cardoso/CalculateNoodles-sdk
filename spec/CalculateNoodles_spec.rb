require 'spec_helper'

RSpec.describe CalculateNoodles do
  subject { CalculateNoodles::Calculate.new }
  it 'has a version number SDK' do
    expect(CalculateNoodles::VERSION).not_to be nil
  end

  context "when result hourglass_one is 5 and hourglass_two is 7'" do
     before do
        @time_cook = 3
        @time_hourglass_one = 5
        @time_hourglass_two = 7
     end

      it "test time_cook 3 = 10 && calculate is (5 + 5) - 7" do
        expect(subject.calculate_time(@time_cook,@time_hourglass_one,@time_hourglass_two)).to eql(10)
      end

      it "test time_cook 1 = 15 && calculate is 5 + 5 + 5 - (7 + 7)" do
        @time_cook = 1
        expect(subject.calculate_time(@time_cook,@time_hourglass_one,@time_hourglass_two)).to eql(15)
      end

      it "test time_cook 7 = 7" do
        @time_cook = 7
        expect(subject.calculate_time(@time_cook,@time_hourglass_one,@time_hourglass_two)).to eql(7)
      end
   end

  context "when result time hourglass_one is 4 and hourglass_two is 6, invalid'" do
    before do
        @time_cook = 3
        @time_hourglass_one = 4
        @time_hourglass_two = 6
    end

      it "return msg alert time invalid" do
        expect(subject.calculate_time(@time_cook,@time_hourglass_one,@time_hourglass_two)).to eql('It is not possible to cook at the right time')
      end
   end

   context "when result hourglass_one is 1 and hourglass_two is 4'" do
    before do
        @time_cook = 3
        @time_hourglass_one = 1
        @time_hourglass_two = 4
    end

      it "test time_cook 3 = 3" do
        expect(subject.calculate_time(@time_cook,@time_hourglass_one,@time_hourglass_two)).to eql(3)
      end
   end
end