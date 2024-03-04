n,m = gets.split.map(&:to_i)
s = gets.chomp
t = gets.chomp.chars
prefix = t.slice(0, n).join
suffix = t.slice(-n, n).join

if s == prefix and s == suffix
    print 0
elsif s == prefix
    print 1
elsif s == suffix
    print 2
else
    print 3
end