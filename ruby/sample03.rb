# コードブロック
puts File.open("sample.txt", "r").read

puts 
# クラス
class FileController
  attr_accessor :fileName
  def initialize(fileName)
    @fileName = fileName
  end
  def readFile
    File.open(fileName, "r") do |f|
      puts f.read
    end
  end
end

file = FileController.new("sample.txt")
file.readFile
