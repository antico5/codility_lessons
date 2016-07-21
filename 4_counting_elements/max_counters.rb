def solution n, a
  counters = Array.new(n).map! { 0 }
  max = 0
  max_base = 0
  a.each do |item|
    if item <= n
      new_count = [counters[item-1], max_base].max + 1
      counters[item-1] = new_count
      max = [max, new_count].max
    else
      max_base = max
    end
  end
  counters.map { |counter| [counter,max_base].max }
end
