def solution a, b, k
  a = (a / k.to_f).ceil * k
  b = (b / k.to_f).floor * k
  divisors = (b - a) / k + 1
end
