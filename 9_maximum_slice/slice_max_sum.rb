def solution a
  max = -1_000_000
  sum = -1_000_000

  a.each do |item|
    prev_sum = sum
    sum = [prev_sum+item, item].max
    max = [max, sum].max
  end

  max
end

