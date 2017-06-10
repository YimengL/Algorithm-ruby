# 独立解出

require 'set'

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  h_set = Set.new
  nums.each do |num|
    if h_set.include? num
      h_set.delete num
    else
      h_set.add num
    end
  end
  h_set.to_a.first
end
