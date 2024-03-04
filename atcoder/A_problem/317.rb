n,h,x = gets.split.map(&:to_i)
potions = gets.split.map(&:to_i)
diff_h = x - h
ans_v = potions.select {|potion| potion >= diff_h}.min
ans = potions.index(ans_v) + 1
print ans