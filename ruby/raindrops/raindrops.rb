class Raindrops
  def self.convert(number)
    return number.to_s if !three_is_a_factor?(number) && !five_is_a_factor?(number) && !seven_is_a_factor?(number)
    result = ""

    result << "Pling" if three_is_a_factor?(number)
    result << "Plang" if five_is_a_factor?(number)
    result << "Plong" if seven_is_a_factor?(number)
    return result
  end

  def self.three_is_a_factor?(number)
    number % 3 == 0
  end

  def self.five_is_a_factor?(number)
    number % 5 == 0
  end

  def self.seven_is_a_factor?(number)
    number % 7 == 0
  end

end
