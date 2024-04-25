# 方針
# それぞれの人の賭けたものを２次元配列betsに格納
# betsをeachで回して、xが含まれていれば最小値を更新
# もう一度betsをeachで回して、賭けた数と最小値が一致していればansに格納

n = gets.to_i
bets = []
ans = []
n.times do
    c = gets.to_i
    bet = gets.split.map(&:to_i)
    bets << bet
end

x = gets.to_i
min_size_ans = 10**9

bets.each do |bet|
    min_size_ans = [min_size_ans, bet.size].min if bet.include?(x)
end

bets.each_with_index do |bet, i|
    if bet.include?(x) and bet.size == min_size_ans
        ans << (i+1)
    end
end
puts ans.size
print ans.join(" ")
