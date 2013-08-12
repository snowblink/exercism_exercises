class Anagram
  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    possible_anagrams.find_all do |anagram|
      permutations.any? do |permutation|
        anagram == permutation
      end
    end
  end

  def permutations
    @word.chars.permutation.map(&:join) - [@word]
  end
end