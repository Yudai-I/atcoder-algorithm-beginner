n = gets.to_i
nums = [0] * n
count = [0] * n
ices = Array.new(n) { gets.split.map(&:to_i) }
ans_candidate = []

# 方針 制約が2 <= N <= 3 * 10**5であることから、icesを回すeach文を2～3回書くことが許容される(解くための手順)であると推測

# 各フレーバーごとに最大値を格納する処理
ices.each do |ice|
  f, s = ice
  nums[f - 1] = [nums[f - 1], s].max
end

# 各フレーバーごとに最大値ではない、もしくは2つ目の最大値を見つけた場合にsを1/2する処理
ices.each_with_index do |ice, i|
  f, s = ice
  # 下のif文では各フレーバーの最大値が複数存在する場合にどれかを1/2するためのもの 例: [4,2], [4,2]がある場合、[4,2], [4,1]にする
  if nums[f - 1] == s and count[f - 1] >= 1
    ices[i][1] = s/2
  elsif nums[f - 1] == s
    count[f - 1] += 1
  elsif nums[f - 1] > s
    ices[i][1] = s/2
  end
  ans_candidate << ices[i][1]
end

print ans_candidate.max(2).sum
