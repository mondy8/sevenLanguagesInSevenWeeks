# 2日目　試してみよう-1
array1 = (1..16).to_a
array2 = (1..4).to_a
array1.concat array2
p array1

# Enumeratorのeach_sliceを使った場合
array1.each_slice(16) {|a| p a}
