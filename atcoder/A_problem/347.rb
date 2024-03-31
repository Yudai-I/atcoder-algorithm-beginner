n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.each do |x|
    if x % k == 0
        print x/k
        print " "
    end
end