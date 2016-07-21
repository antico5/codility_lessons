def solution(x, y, d)
  distance = y - x
  jumps = distance / d.to_f
  jumps.ceil
end
