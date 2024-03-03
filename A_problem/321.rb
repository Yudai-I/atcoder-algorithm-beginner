n = gets.chomp.chars.map(&:to_i)
sorted_uniq_n = n.uniq.sort.reverse

if n == sorted_uniq_n
    print "Yes"
else
    print "No"
end