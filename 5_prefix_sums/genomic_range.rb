FACTORS = { 'A' => 1,
            'C' => 2,
            'G' => 3,
            'T' => 4 }


def solution s, p, q
  nucleotides = FACTORS.keys
  hash = {}
  nucleotides.each do |key|
    hash[key] = Array.new s.size
    hash[key][-1] = -1
  end
  (s.size - 1).downto(0).each do |i|
    nucleotides.each do |nucleotide|
      array = hash[nucleotide]
      if s[i] == nucleotide
        array[i] = i
      else
        array[i] = array[i+1] || -1
      end
    end
  end
  mins = Array.new p.size

  (0...p.size).each do |i|
    a = p[i]
    b = q[i]
    nucleotides.each do |nucleotide|
      pos = hash[nucleotide][a]
      if a <= pos and pos <= b
        mins[i] = FACTORS[nucleotide]
        break
      end
    end
  end
  mins
end

