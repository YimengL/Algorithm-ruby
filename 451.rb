# 独立解出

# @param {String} s
# @return {String}
def frequency_sort(s)
  h_map = Hash.new(0)
  s.each_char do |c|
    h_map[c] += 1
  end
  res = ""
  h_map.sort_by { |k, v| v }.reverse.to_h.each do |k, v|
    res << k * v
  end
  res
end
