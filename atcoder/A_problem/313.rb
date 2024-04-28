n = gets.to_i
p = gets.split.map(&:to_i)
first_programer = p[0]

if first_programer == p.max and p.count(p.max) == 1
  print 0
else
  print (p.max - first_programer + 1)
end

