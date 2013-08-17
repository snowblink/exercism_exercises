class Beer
  def verse(starting_number_of_bottles)
    bob = "bottles of beer"
    bottles_at_end_of_verse = starting_number_of_bottles - 1
    lines = []
    lines << "#{starting_number_of_bottles} #{bob} on the wall, #{starting_number_of_bottles} #{bob}."
    lines << "Take one down and pass it around, #{bottles_at_end_of_verse} #{bob} on the wall."
    lines << ""
    lines.join("\n")
  end
end