

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  h_map = Hash.new(0)
  nums.each { |num| h_map[num] += 1 }
  h_map.max_by(k) { |key, value| value }.to_h.keys
end
