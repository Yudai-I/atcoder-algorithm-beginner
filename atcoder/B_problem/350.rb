n, q = gets.split.map(&:to_i)
teeth = (1..n).to_a
t = gets.split.map(&:to_i)

t.each do |x|
    if teeth.include?(x)
        teeth.delete(x)
    else
        teeth << x
    end
end

print teeth.length