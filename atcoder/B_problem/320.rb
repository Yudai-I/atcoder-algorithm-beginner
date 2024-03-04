S = gets.chomp.chars
ans = 0
(S.size).times do |i|
    s1 = S[i..-1]
    (s1.size).times do |j|
        s2 = s1[0..-j]
        if s2 == s2.reverse
            ans = [ans, s2.size].max
        end
    end
end
print ans