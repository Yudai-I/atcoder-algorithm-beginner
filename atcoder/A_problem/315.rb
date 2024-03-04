s = gets.chomp.chars
excepts = ["a","e","i","o","u"]
s = s.map {|x| excepts.include?(x) ? "" : x}
ans = s.compact.join
print ans