n = gets.to_i
products = gets.split.map(&:to_i)
products_list = products.tally
products_list.default = 0
ans = (products_list[400] * products_list[100]) + (products_list[300] * products_list[200])
print ans