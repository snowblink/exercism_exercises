class Grains
  def square(i)
    return 1 if i == 1
    return 2 * square(i-1)
  end

  def total
    (1..64).inject(0) do |memo, i|
      memo += square(i)
    end
  end
end
