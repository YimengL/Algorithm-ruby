require 'set'

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  h_set = Set.new
  nums.each do |num|
    h_set.add(num)
  end
  h_set.size != nums.size
end
