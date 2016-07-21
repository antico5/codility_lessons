def solution x, a
  missing = {}
  (1..x).each { |position| missing[position] = true }
  a.each_with_index do |position, time|
    missing.delete position
    return time if missing.empty?
  end
  return -1
end
