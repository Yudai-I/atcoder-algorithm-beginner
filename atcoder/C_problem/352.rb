n = gets.to_i
bigs = Array.new(n) { gets.split.map(&:to_i) }
# 2次元配列にある、各要素の先頭のインデックスのsumを求めたい場合に簡潔に書く方法
sum = bigs.map {|x| x[0]}.sum
ans = 0

n.times do |i|
  top_big = bigs[i]
  ans =  [ans, sum - top_big[0] + top_big[1]].max
end

print ans