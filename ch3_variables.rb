var1 = 8
var2 = var1
#var2 is really pointing at 8 - the same as var1. It is like writing var2 = 8
puts var1
puts var2

puts ''

var1 = 'eight'
puts var1
puts var2
#Then we had var1 point to  'eight', but since var2 was never really pointing at var1, it stays pointing at 8.