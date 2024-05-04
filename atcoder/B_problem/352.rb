s = gets.chomp.chars
t = gets.chomp.chars

t.each_with_index do |x, i|
  if x == s[0]
    s.shift
    print (i+1).to_s + " "
  end
end