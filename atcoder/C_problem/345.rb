s = gets.chomp.chars

s_tally = s.tally
n = s.size
ans = (n * (n - 1)) / 2
flag = false
s_tally.each do |k, v|
    ans -= ((v * (v - 1)) / 2)
    flag = true if v > 1
end

ans += 1 if flag
puts ans