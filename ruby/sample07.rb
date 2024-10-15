# 2日目　試してみよう-3
word = "テキスト"

file = File.open("sample.txt", "r")
a = /#{word}/.match(file.gets)
b = /#{word}/.match(file.gets)
p file.gets
p a
p b

p "grepしたいテキストを入力してください。\n"
targetWord = gets.chomp 
counter = 0
File.open("sample.txt", "r") do |f|
  f.each_line do |l|
    targetLine = /#{targetWord}/.match(l)
    if targetLine != nil
      p "#{counter}行目：#{l.chomp}"
    end
    counter = counter + 1
  end
end
