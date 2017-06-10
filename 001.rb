# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  h_map = {}
  nums.each_with_index do |num, idx|
    if h_map.has_key? num
      return [h_map[num], idx]
    else
      h_map[target-num] = idx
    end
  end
end
