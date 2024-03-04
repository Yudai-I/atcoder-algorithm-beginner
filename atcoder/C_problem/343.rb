N = gets.to_i
d = 
ans = []

(1..1000000).each do |i|
    n = (i**3).to_s
    if n.to_i > N
        print ans.max
        exit
    end
    
    reversed_n = n.reverse
    if n == reversed_n
        ans << n.to_i
    end
end

print ans.max