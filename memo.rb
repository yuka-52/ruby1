require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s

if memo_type = "1"
  puts "拡張子を覗いたファイルを入力してください"
  file_name = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "終了後、Ctr+Dを押します"
  input_memo = $stdin.read

  CSV.open("#{file_name}.csv","w")do |csv|
  csv << ["#{input_memo}"]
end
 
elsif memo_type = "2"
  puts "拡張子を覗いたファイルを入力してください"
  file_name = gets.chomp
  file = File.open("#{file_name}.csv")
  puts "メモしたい内容を記入してください"
  puts "終了後、Ctr+Dを押します"
  input_memo = $stdin.read
  file.put "#{input_memo}"
end

