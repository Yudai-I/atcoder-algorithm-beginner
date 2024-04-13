s = gets.chomp.chars
h = s.tally.values

h.each do |x|
    if h.count(x) != 0 and h.count(x) != 2
        print "No"
        exit
    end
end

print "Yes"