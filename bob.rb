class Bob
  def hey(noise)
    noise = Noise.new(noise)
    if noise.silence?
      "Fine. Be that way!"
    elsif noise.shouting?
      'Woah, chill out!'
    elsif noise.question?
      'Sure.'
    else
      "Whatever."
    end
  end
end

class Noise
  attr_reader :noise
  def initialize(noise)
    @noise = noise
  end

  def shouting?
    noise.upcase == noise
  end

  def question?
    noise =~ /\?$/
  end

  def silence?
    (noise =~ /^\s*$/ || noise.nil?)
  end
end
