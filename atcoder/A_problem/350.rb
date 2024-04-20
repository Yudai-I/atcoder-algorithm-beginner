s = gets.chomp.chars
s_n = (s[3] + s[4] + s[5]).to_i

if s_n <= 0 or s_n > 349 or s_n == 316
    print "No"
else
    print "Yes"
end