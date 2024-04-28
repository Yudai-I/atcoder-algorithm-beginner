a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
diff = a.sum - b.sum
print diff + 1