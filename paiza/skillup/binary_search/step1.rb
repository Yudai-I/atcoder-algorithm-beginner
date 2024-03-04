# https://paiza.jp/works/mondai/binary_search/ruby/binary_search__basic_step1/result?token=af79cccf9b2ae150004093cadb952f72
# bserach_index
n = gets.to_i
nums = gets.split.map(&:to_i).sort
m = gets.to_i
m.times do
    x = gets.to_i
    v = nums.bsearch_index {|v| v >= x}
    if v.nil?
        puts 0
    else
        puts nums.size - v
    end
end