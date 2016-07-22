EAST = 0
WEST = 1

def solution a
  pairs = 0
  going_east = 0
  a.each do |car|
    if car == EAST
      going_east += 1
    else
      pairs += going_east
      return -1 if pairs > 1_000_000_000
    end
  end
  pairs
end
