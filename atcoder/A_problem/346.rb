n = gets.to_i
nums = gets.split.map(&:to_i)

(nums.size - 1).times do |i|
    v1 = nums[i]
    v2 = nums[i+1]
    print v1*v2
    print " "
end