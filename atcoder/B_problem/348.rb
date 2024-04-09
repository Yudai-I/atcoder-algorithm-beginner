n = gets.to_i
points = Array.new(n) { gets.split.map(&:to_i) }
points.each do |i|
    x1 = i[0]
    y1 = i[1]
    max_distance = 0
    max_distance_point = 0
    points.each_with_index do |j, idx|
        x2 = j[0]
        y2 = j[1]
        distance = ((x1-x2)**2 + (y1-y2)**2)
        if distance > max_distance
            max_distance = distance
            max_distance_point = (idx + 1)
        end
    end
    p max_distance_point
end