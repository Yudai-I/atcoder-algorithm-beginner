n = gets.to_i
ans = 0

(1..n).each do |x|
    if x%3 != 0
        print "o"
    else
        print "x"
    end
end