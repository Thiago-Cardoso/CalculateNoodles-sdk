require "CalculateNoodles/version"
MAX_MULTIPLIER = 500

module CalculateNoodles
  class Error < StandardError; end
    class Calculate
    attr_accessor :time_cook, :time_hourglass_one, :time_hourglass_two

    def initialize(time_cook = nil, time_hourglass_one = nil,time_hourglass_two = nil)
      @time_cook = time_cook.to_i
      @time_hourglass_one = time_hourglass_one.to_i
      @time_hourglass_two = time_hourglass_two.to_i
    end
    
    def compare(time_cook, time_hourglass_one, time_hourglass_two)
      if ((time_hourglass_one - time_hourglass_two).abs == time_cook)
          return [time_hourglass_one, time_hourglass_two].max
      end
      return 0
    end

    def hourglass_one
      (1..MAX_MULTIPLIER).each do |i|
          if (@time_hourglass_one * i == @time_cook || @time_hourglass_two * i == @time_cook)
              return @time_cook
          end
      end
       false
    end

    def hourglass_two
      (1..MAX_MULTIPLIER).each do |i|
          (1..MAX_MULTIPLIER).each do |j|
              res = compare(@time_cook, @time_hourglass_one * i, @time_hourglass_two * j);
              return res if res > 0
          end
      end
       false
    end

    def calculate_time
      if solution = hourglass_one
        return solution
      end
      if solution = hourglass_two
        return solution
      end
      return "It is not possible to cook at the right time"
    end
  end
end
