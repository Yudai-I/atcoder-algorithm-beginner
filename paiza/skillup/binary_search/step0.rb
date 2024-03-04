# https://paiza.jp/works/mondai/binary_search/binary_search__basic_step0/edit?language_uid=ruby
# bsearchで簡単に二分探索
n = gets.to_i
nums = gets.split.map(&:to_i).sort
m = gets.to_i
m.times do
    x = gets.to_i
    v = nums.bsearch {|v| v >= x}
    if v == x
        puts "Yes"
    else
        puts "No"
    end
end