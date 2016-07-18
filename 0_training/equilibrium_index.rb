def solution(a)
  sol = -1
  left = 0
  right = a.inject :+
  a.size.times do |i|
    right -= a[i]
    if right == left
      return i
    end
    left += a[i]
  end
  return sol
end
