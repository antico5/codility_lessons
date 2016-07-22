def solution a
  values = {}
  a.each do |item|
    values[item] ||= 0
    values[item] += 1
  end
  values.keys.size
end
