n = gets.to_i

n.times do
    ans = []
    a = gets.split
    a.each_with_index do |e,i|
        if e == "1"
            ans << "#{i+1}"
        end
    end
    puts ans.join(" ")
end