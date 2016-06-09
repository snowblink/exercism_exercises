class Complement
  def self.of_dna(nucleotide)
    return "" if nucleotide !~ /^[GCTA]+$/
    nucleotide.tr("GCTA", "CGAU")
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
