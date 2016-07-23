def solution array
  occurrences = {}
  equi_leader_count = 0
  array.each do |item|
    occurrences[item] ||= 0
    occurrences[item] += 1
  end
  leader = occurrences.max_by {|k,v| v}[0]
  left_oc= 0
  right_oc = occurrences[leader]
  left_size = 0
  right_size = array.size
  (0..array.size - 2).each do |i|
    left_size += 1
    right_size -= 1
    if array[i] == leader
      left_oc += 1
      right_oc -= 1
    end
    if left_oc / left_size.to_f > 0.5 and right_oc / right_size.to_f > 0.5
      equi_leader_count += 1
    end
  end
  equi_leader_count
end
