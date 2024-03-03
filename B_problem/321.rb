N, X = gets.split.map(&:to_i)
scores = gets.split.map(&:to_i)
ans = -1
(0..100).each do |i|
    scores_copy = [*scores, i]
    if scores_copy.sum - scores_copy.minmax.sum >= X
        ans = i
        break
    end
end

print ans