#  独立解出

# @param {Integer[][]} points
# @return {Integer}
def number_of_boomerangs(points)
  cnt = 0
  points.each_with_index do |point_a, idx_a|
    h_map = Hash.new(0)
    points.each_with_index do |point_b, idx_b|
      next if idx_a == idx_b
      res = distance_sqr(point_a, point_b)
      h_map[res] += 1
    end
    h_map.each do |key, value|
      cnt += combination(value)
    end
  end
  cnt
end

def distance_sqr(point_a, point_b)
  (point_b[0] - point_a[0]) ** 2 + (point_b[1] - point_a[1]) ** 2
end

def combination(sz)
  sz * (sz - 1)
end
