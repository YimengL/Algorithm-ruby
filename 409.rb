#

# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  h_map = Hash.new(0)
  s.each_char { |c| h_map[c] += 1 }
  res = 0
  h_map.each_value { |value| res += (value / 2 * 2) }
  res == s.length ? res : res + 1
end
