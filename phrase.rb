class Phrase
  def initialize(words)
    @words = words
  end

  def word_count
    tokenized_words.inject(Hash.new(0)) do |results, word|
      results[word.downcase] += 1
      results
    end
  end

  def tokenized_words
    @words.gsub(/,/, ' ').
      gsub(/[^A-Za-z0-9 ]/, '').
      split(/\s+/)
  end
end