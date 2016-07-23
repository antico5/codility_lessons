def solution heights
  stack = []
  blocks = 0
  heights.each do |height|
    while stack.last && stack.last > height
      stack.pop
    end
    unless stack.last == height
      blocks += 1
      stack.push height
    end
  end
  blocks
end

