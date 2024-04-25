m = gets.to_i
d = gets.split.map(&:to_i)
sum_d = d.sum
middle_day = (sum_d + 1) / 2

a = 1
b = 0
d.each do |x|
  middle_day -= x
  if middle_day <= 0
    b = d[a-1]
    break
  end
  a += 1
end
print a
print " "
print (b + middle_day)