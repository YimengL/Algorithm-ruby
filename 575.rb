# 独立解出

require 'set'

# @param {Integer[]} candies
# @return {Integer}
def distribute_candies(candies)
  h_set = Set.new
  candies.each do |category|
    h_set.add(category)
  end
  h_set.size <= candies.size / 2 ? h_set.size : candies.size / 2
end
