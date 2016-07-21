def solution a
  len = a.size
  checklist = Array.new len
  a.each do |item|
    if item <= len
      checklist[item-1] = true
    end
  end
  checklist.each { |i| return 0 if i.nil? }
  return 1
end
