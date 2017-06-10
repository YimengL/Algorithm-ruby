# 独立解出，但是更好的方法是 4 * island - 2 * neighbor

# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  perimeter = 0
  grid.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      next if cell == 0
      perimeter += 1 if i == 0 or grid[i-1][j] == 0
      perimeter += 1 if i == grid.size - 1 or grid[i+1][j] == 0
      perimeter += 1 if j == 0 or grid[i][j-1] == 0
      perimeter += 1 if j == row.size - 1 or grid[i][j+1] == 0
    end
  end
  perimeter
end
