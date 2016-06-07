module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Gigasecond
  GIGASECOND = 10**9

  def self.from(since)
    since + GIGASECOND
  end
end
