class Squares
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum ** 2
  end

  def sum_of_squares
    (1..number).inject(0) do |sum, num|
      sum + num ** 2
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private
  def sum
    (1..number).inject(0) do |sum, num|
      sum + num
    end
  end
end


module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
