# 独立解出

# @param {String[]} words
# @return {String[]}
def find_words(words)
  h_map = {
    "Q" => 1, "W" => 1, "E" => 1, "R" => 1, "T" => 1, "Y" => 1, "U" => 1,
    "I" => 1, "O" => 1, "P" => 1, "A" => 2, "S" => 2, "D" => 2, "F" => 2,
    "G" => 2, "H" => 2, "J" => 2, "K" => 2, "L" => 2, "Z" => 3, "X" => 3,
    "C" => 3, "V" => 3, "B" => 3, "N" => 3, "M" => 3
  }
  output = []
  words.each do |word|
    row = h_map[word.upcase[0]]
    i = 1
    while i < word.length
      break if h_map[word.upcase[i]] != row
      i += 1
    end
    output << word if i == word.length
  end
  output
end
