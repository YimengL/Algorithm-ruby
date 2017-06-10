# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  h_map = {}
  t.each_char do |ch|
    h_map[ch] = 0 unless h_map.has_key? ch
    h_map[ch] += 1
  end

  s.each_char do |ch|
    h_map[ch] -= 1
    h_map.delete ch if h_map[ch] == 0
  end

  h_map.keys[0]
end