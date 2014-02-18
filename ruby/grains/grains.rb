class Grains
  def square(i)
    if i == 1
      return 1
    else
      return 2 * square(i-1)
    end
  end

  def total
    result = 0
    (1..64).each do |i|
      result += square(i)
    end
    result
  end
end
