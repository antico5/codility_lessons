DOWNSTREAM = 1
UPSTREAM = 0

def solution size, direction
  living = direction.size
  downstream = []
  (0...living).each do |fish|
    if direction[fish] == DOWNSTREAM
      downstream.push size[fish]
    else
      while enemy = downstream.last
        living -= 1
        if enemy > size[fish]
          break
        else
          downstream.pop
        end
      end
    end
  end
  living
end
