class DNA
  attr_reader :strand

def initialize(strand)
  @strand = strand
  nucleotide_string = []
  nucleotide_string << strand.split
end

def nucleotide_counts(strand)
  if strand == "A"
        0
  else 
    5
  end
end

def count(nucleotide)
  strand.chars.inject(0) do |sum, nucleotide|
    sum + nucleotide_counts(nucleotide)
  end
end

end
