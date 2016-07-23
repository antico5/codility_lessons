BRACKETS = { '(' => ')',
             '[' => ']',
             '{' => '}' }

def solution s
  stack = []
  openers = BRACKETS.keys
  s.each_char do |char|
    if openers.include? char
      stack.push char
    else
      last = stack.pop
      return 0 unless BRACKETS[last] == char
    end
  end
  stack.empty? ? 1 : 0
end
