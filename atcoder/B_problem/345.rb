require 'bigdecimal'

n = BigDecimal(gets.chomp)
divided_n = (n / BigDecimal("10"))
puts divided_n.ceil