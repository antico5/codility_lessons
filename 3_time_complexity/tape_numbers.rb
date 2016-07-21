def solution(a)
  left = 0
  right = a.inject :+
  min_diff = 2000
  a[0..-2].each do |item|
    left += item
    right -= item
    min_diff = [min_diff, (left-right).abs].min
  end
  min_diff
end
