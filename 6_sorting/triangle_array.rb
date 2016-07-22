def solution a
  a = a.select { |item| item > 0 }.sort
  return 0 if a.size < 3
  sum = a[0] + a[1]
  (2...a.size).each do |i|
    sum += a[i]
    factor = a[i] / sum.to_f
    if factor < 0.5
      return 1
    end
    sum -= a[i-2]
  end
  return 0
end

