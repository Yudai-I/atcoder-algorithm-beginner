n = gets.to_i
a = gets.split.map(&:to_i)

m = gets.to_i
b = gets.split.map(&:to_i)

l = gets.to_i
c = gets.split.map(&:to_i)

q = gets.to_i
x = gets.split.map(&:to_i)

sums = []

a.each do |s|
    b.each do |t|
        c.each do |u|
            sums << (s+t+u)
        end
    end
end
sums = sums.uniq.sort
x.each do |r|
    ans = sums.bsearch{|g| g >= r}
    if ans == r
        puts "Yes"
    else
        puts "No"
    end
end


    
    
    
