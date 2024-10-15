# 1日目　試してみよう-6
print "数字を入力してください\n"
input = gets.to_i
random = rand(10)
result = random < input ? "大きい" : "小さい"
print "あなたが選んだ数字:#{input}\nPCが選んだ数字:#{random}\n結果:あなたの数字は#{result}"
