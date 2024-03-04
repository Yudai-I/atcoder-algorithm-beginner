# 累積和
# 例　nums = [1 2 3 4 5 6 7 8 9 10]から2番目(3)から7番目(8)までの和を求めたいときに使う
def calc_sum(nums, n, m)
    sums = [0]
    sum = 0
    (nums.size).times do |i|
        sum += nums[i]
        sums << sum
    end
    
    ans = sums[m+1] - sums[n]
    return ans
end