s = gets.chomp.chars
s_pattern = []
(0..s.size).each do |i|
    s.size.times do |j|
        s_pattern << s[j,i]
    end
end

ans = s_pattern.uniq.size - 1

print ans
    
