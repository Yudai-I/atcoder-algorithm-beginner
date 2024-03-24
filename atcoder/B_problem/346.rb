w, b = gets.split.map(&:to_i)
s_pattern_size = w+b
s = ("wbwbwwbwbwbw" * s_pattern_size * 10).chars
w_v = "w" * w
b_v = "b" * b
start_idx = 0
end_idx = s_pattern_size
count = s_pattern_size
till = 12 * s_pattern_size * 10

while till > count do
    literal = s.slice(start_idx, end_idx)
    if literal.count("w") == w and literal.count("b") == b
        print "Yes"
        exit
    end
    start_idx += 1
    count += 1
end