n,m = gets.split.map(&:to_i)
winners = []
losers = []
players = (1..n).to_a

m.times do
    a,b = gets.split.map(&:to_i)
    winners << a
    losers << b
end

# 負けたことない人を探す　一人ならばその人が優勝
survivors = players - losers.sort.uniq

if survivors.size >= 2
    print -1
else
    print survivors[0]
end


