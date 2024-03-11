def culc_combination(n)
    (n * (n-1)) / 2
end

n = gets.to_i
nums = gets.split.map(&:to_i)
nums_list = nums.tally.to_a.sort_by(&:first).to_h
nums_list.default = 0

ans = 0
nums_list.each do |k, v|
    if k > 50000
        print ans
        exit
    end
    k_pair_key = 100000 - k
    k_pair_value = nums_list[k_pair_key]
    if k != 50000
        ans += v * k_pair_value
    elsif k == 50000
        ans += culc_combination(v)
    end
end

print ans