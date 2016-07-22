def solution rad
  active = []
  discs = rad.size
  intersections = 0
  (0 ... discs).each do |i|
    (0 ... i).each do |j|
      if rad[i] + rad[j] >= i-j
        intersections += 1
        return -1 if intersections > 10_000_000
      end
    end
  end
  intersections
end
