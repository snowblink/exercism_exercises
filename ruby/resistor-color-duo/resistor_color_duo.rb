class ResistorColorDuo
  BANDS = %w(
    black
    brown
    red
    orange
    yellow
    green
    blue
    violet
    grey
    white
  )

  def self.value(colors)
    colors[0..1].map {|c|
      BANDS.index(c)
    }.join.to_i
  end
end
