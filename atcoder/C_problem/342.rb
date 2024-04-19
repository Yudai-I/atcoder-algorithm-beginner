n = gets.to_i
s = gets.chomp.chars
q = gets.to_i
a_z = ('a'..'z').to_a.join
li = []
s.each do |char|
    idx = a_z.index(char)
    li << idx
end

q.times do
    c, d = gets.split
    a_z = a_z.tr(c, d)
end

ans = li.map {|idx| a_z[idx] }.join
print ans