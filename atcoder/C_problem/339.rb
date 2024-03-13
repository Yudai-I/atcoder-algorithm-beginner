n = gets.to_i
get_and_off = gets.split.map(&:to_i)
min_people = 0
crr = 0

get_and_off.each do |x|
    crr += x
    min_people = [min_people, crr].min
end

number_of_people_at_first = min_people.abs
ans = number_of_people_at_first + get_and_off.sum

print ans