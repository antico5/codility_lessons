def solution a
  len = a.size
  min = 10000
  start = 0
  sum = a[0] + a[1]
  left = 0
  right = 1

  while true
    avg = sum.to_f / (right - left + 1)

    if avg < min
      min = avg
      start = left
    end
    puts "Left: #{left} Right: #{right} Sum: #{sum} Avg: #{ avg }"

    break if left == len - 2

    if right+1 < len && (a[right+1] < avg || right - left == 1)
      right += 1
      sum += a[right]
    else
      sum -= a[left]
      left += 1
    end
  end

  return start
end
