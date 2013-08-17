class Beer
  def verse(starting_number_of_bottles)
    bottles_at_end_of_verse = starting_number_of_bottles - 1
    lines = []
    lines << "#{x_bottles_of_beer(starting_number_of_bottles)} on the wall, #{x_bottles_of_beer(starting_number_of_bottles)}."
    lines << "Take #{starting_number_of_bottles == 1 ? 'it' : 'one'} down and pass it around, #{x_bottles_of_beer(bottles_at_end_of_verse)} on the wall."
    lines << ""
    lines.join("\n")
  end

  def x_bottles_of_beer(number)
    if number == 0
      "no more bottles of beer"
    elsif number == 1
      "1 bottle of beer"
    else
      "#{number} bottles of beer"
    end
  end
end