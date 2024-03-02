n = gets.to_i
s = gets
ans = s.index("ABC") + 1 if s.include?("ABC")

if ans
  print ans
else
  print "-1"
end