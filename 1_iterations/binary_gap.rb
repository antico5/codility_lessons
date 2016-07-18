def solution n
  max = 0
  divider = 2
  current = 0
  start = false
  while divider <= n
    mod = n % divider
    if mod > 0
      n -= mod
      current = 0
      start = true
    else
      current += 1 if start
      max = [max, current].max
    end
    divider *= 2
  end
  max
end

