n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.to_i

q.times do |i|
    a, b = gets.split.map(&:to_i)
    idx_a = p.index(a)
    idx_b = p.index(b)
    if idx_a > idx_b
        puts b
    else
        puts a
    end
end