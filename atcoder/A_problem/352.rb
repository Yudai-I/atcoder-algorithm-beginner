# andと&&の違いについて学んだ

n, x, y, z = gets.split.map(&:to_i)
print z >= [x, y].min && z <= [x, y].max ? "Yes" : "No"