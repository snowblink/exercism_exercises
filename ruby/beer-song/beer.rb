class Beer
  attr_reader :num_bottles

  def verse(num_bottles)
    @num_bottles = num_bottles

    lines = []
    lines << on_the_wall
    lines << pass_it_around
    lines.join("\n") + "\n"
  end

  def on_the_wall
    "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer."
  end

  def pass_it_around
    "Take one down and pass it around, #{next_bottle} bottles of beer on the wall."
  end

  def next_bottle
    num_bottles - 1
  end
end
