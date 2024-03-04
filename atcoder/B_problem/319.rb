ans = ""
N = gets.to_i

(N+1).times do |i|
    yakusuu = []
    (1..9).each do |j|
        if (N/j) != 0 and i % (N/j) == 0 and N%j == 0
            yakusuu << j
        end
    end
    if yakusuu.size >= 1
        ans += (yakusuu.min).to_s
    else
        ans += "-"
    end
end
print ans