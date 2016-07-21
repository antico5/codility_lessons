def solution a
  len = a.size
  checklist = Array.new(len + 1)
  a.each do |item|
    if item <= len and item > 0
      checklist[item-1] = true
    end
  end
  len.times do |i|
    return i + 1 unless checklist[i]
  end
  return len + 1
end
