def solution s
  count = 0
  s.each_char do |char|
    if char == '('
      count += 1
    else
      count -= 1
    end
    return 0 if count < 0
  end
  count == 0 ? 1 : 0
end
