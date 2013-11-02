class Hamming
  def self.compute(strand_a, strand_b)
    return 0 if strand_a == strand_b
    strand_b_as_array = strand_b.chars

    hamming = 0
    strand_a.chars.each_with_index do |char, i|
      break if i == strand_a.chars.length || i == strand_b.chars.length
      if char != strand_b_as_array[i]
        hamming += 1
      end
    end
    hamming
  end
end
