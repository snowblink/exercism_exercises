class Squares
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum ** 2
  end

  def sum_of_squares
    sum_of(-> n { n ** 2 })
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private
  def sum
    sum_of(-> n { n })
  end

  def sum_of(function)
    (1..number).inject(0) do |sum, num|
      sum + function.call(num)
    end
  end
end


module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
