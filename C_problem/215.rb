s, k = gets.chomp.split
s = s.chars
k = k.to_i
dic = s.permutation(s.size).to_a.map(&:join).sort.uniq
print dic[k-1]