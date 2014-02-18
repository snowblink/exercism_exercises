class Grains
  def initialize
    @_square = Array.new
  end

  def square(i)
    return 1 if i == 1
    if @_square[i].nil?
      @_square[i] = 2 * square(i-1)
    end
    @_square[i]
  end

  def total
    (1..64).inject(0) do |memo, i|
      memo += square(i)
    end
  end
end
