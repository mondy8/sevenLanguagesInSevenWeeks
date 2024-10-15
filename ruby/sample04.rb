# 2日目　セルフスタディ-2
# ハッシュを配列に変換
h = {hoge: 0, fuga:1}
h.each do |key, item|
  puts "key:#{key} item:#{item}"
end

array = h.to_a
puts array

puts 
# 配列をハッシュに変換
a = ["hoge", "fuga"]
hash = {}
a.each do |item|
  hash["#{item}"] = item
end
puts hash
