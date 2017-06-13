

# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  count = 0
  31.times do
    count += ((x ^ y) & 0x01)
    x, y = x >> 1, y >> 1
  end
  count
end
