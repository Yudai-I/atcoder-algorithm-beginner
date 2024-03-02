a,b = gets.split.map(&:to_i)
sum = a+b

9.times do |i|
  if i != sum
    print i
    exit
  end
end