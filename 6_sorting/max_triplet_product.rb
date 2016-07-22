def solution a
  a = a.sort
  prod1 = a[-3..-1].inject :*
  prod2 = a[-1]*a[0]*a[1]
  [prod1, prod2].max
end

