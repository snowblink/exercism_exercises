class Complement
  def self.of_dna(nucleotide)
    nucleotide.tr("GCTA", "CGAU")
  end
end
