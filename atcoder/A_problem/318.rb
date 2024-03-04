n,m,p = gets.split.map(&:to_i)
ans = 1

if n < p
    print 0
    exit
end

while m <= n
    m += p
    if m <= n
        ans += 1
    end
end
print ans