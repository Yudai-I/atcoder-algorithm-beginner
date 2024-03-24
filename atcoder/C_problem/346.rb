n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).uniq
nums_sum = (k * (k + 1)) / 2

a.each do |x|
    if x >= 1 and x <= k
        nums_sum -= x
    end
end

print nums_sum