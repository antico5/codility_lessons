def solution a
  hash = {}
  a.each do |item|
    hash[item] ||= 0
    hash[item] += 1
  end
  hash.detect {|k,v| v.odd? }.first
end

