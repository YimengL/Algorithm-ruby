# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  dict = {}
  s.each_char do |c|
    dict[c] = 0 unless dict.has_key? c
    dict[c] += 1
  end
  t.each_char do |c|
    return false unless dict.has_key? c
    dict[c] -= 1
    dict.delete(c) if dict[c] == 0
  end
  dict.empty?
end