# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  h_map = {}
  nums.each_with_index do |val, index|
    if h_map.has_key? val
      return true if index - h_map[val] <= k
    end
    h_map[val] = index
  end
  false
end
