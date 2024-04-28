n = gets.to_i
a = Array.new(n) { gets.chomp.chars }
b = Array.new(n) { gets.chomp.chars }

n.times do |i|
  n.times do |j|
    x = a[i][j]
    y = b[i][j]
    if x != y
      print [i + 1,j + 1].join(" ")
    end
  end
end