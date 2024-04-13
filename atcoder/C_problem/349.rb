s = gets.chomp.chars
t = gets.chomp.chars
count = 0
result = ""
s.each do |x|
    big_s = x.upcase
    if big_s == t[count]
        result += big_s
        count += 1
    end
end

if result == t.join or (result + "X") == t.join
    print "Yes"
else
    print "No"
end