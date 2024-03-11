n,x,y = gets.split.map(&:to_i)
ans = 0
(1..n).each do |i|
    if i%x == 0 or i%y == 0
        ans += 1
    end
end

print ans