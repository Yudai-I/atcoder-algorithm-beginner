n = gets.to_i
ans = 0
100.times do |i|
    v = 2**i
    if n < v
        ans = i
        print ans - 1
        exit
    end
end