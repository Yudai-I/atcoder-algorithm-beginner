n = gets.to_i
beans = Array.new(n) { gets.split.map(&:to_i) }
arrays = Hash.new

beans.each do |bean|
    a = bean[0]
    c = bean[1]
    if not arrays[c].nil?
        arrays[c] = [arrays[c], a].min
    else
        arrays[c] = a
    end

end
print arrays.values.max