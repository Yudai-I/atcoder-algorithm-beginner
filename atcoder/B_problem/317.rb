n = gets.to_i
nums = gets.split.map(&:to_i)
sorted_nums = nums.sort
i = sorted_nums.min

(sorted_nums.min..sorted_nums.max).each do |num|
    if not sorted_nums.include?(num)
        print (num)
    end
end
