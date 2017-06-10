require 'set'
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  h_set = Set.new
  nums1.each do |num|
    h_set.add(num)
  end

  res = []
  nums2.each do |num|
    if h_set.include? num
      res << num
      h_set.delete num
    end
  end
  res
end
