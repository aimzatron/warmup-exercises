class DNA

  def initialize(strand)
    @strand = strand
  end

  def count(nucleotide)
    raise ArgumentError if nucleotide == 'X'
    nucleotide_counts[nucleotide]

  end

  def nucleotide_counts
    strand_hash = {"A"=>0, "T"=>0, "C"=>0, "G"=>0}
    strand_hash.default = 0
    split_strand = @strand.split("")
    split_strand.each do |nucleotide|
      strand_hash[nucleotide] += 1
    end
      strand_hash
  end
end
