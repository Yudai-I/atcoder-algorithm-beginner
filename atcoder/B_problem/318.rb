n = gets.to_i
sheets = Array.new(n) {gets.split.map(&:to_i)}
S = []
sheets.each do |sheet|
    x_s = sheet[0]
    x_l = sheet[1]
    y_s = sheet[2]
    y_l = sheet[3]
    (x_s..(x_l-1)).each do |i|
        (y_s..(y_l-1)).each do |j|
            S << [i,j]
        end
    end
end
            
    
print S.uniq.size