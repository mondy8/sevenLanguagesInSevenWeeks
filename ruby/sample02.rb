# injectsのサンプル
(1..10).inject(0) do |sum, i|
  puts "sum:#{sum} i:#{i} sum + i:#{sum + i}"
  sum + i
end
