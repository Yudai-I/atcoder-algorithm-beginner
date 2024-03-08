n,d = gets.split.map(&:to_i)
all_schedules = Array.new(n) {gets.chomp.chars}
match_schedules = Array.new(d) { [] }
ans = 0

all_schedules.each do |each_schedules|
    each_schedules.each_with_index do |schedule, i|
        if schedule == "o"
            match_schedules[i] << schedule
        end
    end
end

ans = 0
count = 0
match_schedules.each do |match_schedule|
    if match_schedule.size == n
        count += 1
        ans = [ans, count].max
    else
        count = 0
    end
end

print ans