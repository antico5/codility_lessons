def solution array
  return -1 if array.empty?

  occurrences = {}
  array.each do |item|
    occurrences[item] ||= 0
    occurrences[item] += 1
  end

  leader = occurrences.max_by {|k,v| v}[0]
  count = occurrences[leader]

  return -1 if count/array.size.to_f <= 0.5

  array.each_with_index do |item, i|
    return i if item == leader
  end
end
