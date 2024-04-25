s = gets.chomp.chars
excepts = ["a","e","i","o","u"]
s = s.map {|x| excepts.include?(x) ? "" : x}
ans = s.compact.join
print ans


# 別解
# s = gets.chomp.chars
# s.delete("a")
# s.delete("i")
# s.delete("u")
# s.delete("e")
# s.delete("o")

# print s.join