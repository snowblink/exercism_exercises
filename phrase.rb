class Phrase
  def initialize(words)
    @words = words
  end

  def word_count
    results = Hash.new(0)
    @words.split(/ /).each do |word|
      results[word] += 1
    end
    return results

  end
end