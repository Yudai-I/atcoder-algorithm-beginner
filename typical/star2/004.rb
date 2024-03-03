h,w = gets.split.map(&:to_i)
lines = []

h.times do
    line = gets.split.map(&:to_i)
    lines << line
end

ans_li = Marshal.load(Marshal.dump(lines))
col_sums = []
w.times do |x|
    col_sums << lines.map {|v| v[x]}.sum
end

lines.each_with_index do |line, i|
    row_sum = line.sum
    line.each_with_index do |e, j|
        ans_li[i][j] = (row_sum + col_sums[j]) - e
    end
    puts ans_li[i].join(" ")
end

