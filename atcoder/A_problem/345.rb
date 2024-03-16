s = gets.chomp.chars
s_tally = s.tally

if s[0] == "<" and s[-1] == ">" and s_tally["<"] == 1 and s_tally[">"] == 1
    print "Yes"
else
    print "No"
end