def solution a, k
  length = a.size
  rotated = Array.new length
  a.each_with_index do |item, i|
    new_pos = (i + k) % length
    rotated[new_pos] = item
  end
  rotated
end
