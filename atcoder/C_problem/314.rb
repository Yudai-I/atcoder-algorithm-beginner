# 方針
# ２次元配列colorsに色の種類ごとに部分文字列を格納しておく
# メモで色の種類の数だけ-1を初期化しておく
# stringsでeachを回して、色の種類に対応する１次元配列をcolorsから選択して出力。
# 出力するごとに色の種類に対応するメモの数を+1する。

n, m = gets.split.map(&:to_i)
strings = gets.chomp.chars
c = gets.split.map(&:to_i)

colors = Array.new(m) { [] }
memo = Array.new(m) { -1 }
strings.each_with_index do |string, i|
  colors[(c[i] - 1)] << string
end
print colors

strings.each_with_index do |string, j|
  colors_idx = c[j] - 1
  print colors[colors_idx][memo[colors_idx]]
  memo[colors_idx] += 1
end
