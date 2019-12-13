# Q1
numbers = [1, 2, 3, 4, 5]
numbers.map{|n| n*2-1}

# Q2
names = ["田中", "佐藤", "佐々木", "高橋"]
names << "斎藤"

# Q3
numbers= ["1", "2", "3", "4", "5"]
numbers.map(&:to_i)

# Q4
animals = ["dog", "cat", "fish"]
animals_2 = ["bird", "bat", "tiger"]
animals + animals_2
animals.flatten

# Q5
numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
numbers.count(3)

# Q6
arr = []
arr.empty?
arr_2 = [1, 5, 8, 10]
arr_2.empty?

# Q7
arr = []
arr.is_a?(Array)
arr_2 = {}
arr_2.is_a?(Array)

# Q8
numbers = ["6", "5", "3", "7", "1"]
arr = []
numbers.each do |new_numbers|
  arr << new_numbers.to_i
end

# Q9
users = ["田中", "佐藤", "佐々木", "高橋"]
users.each.with_index(1) do|user,i|
  puts "会員No.#{i}　#{user}さん"
end

# Q10
users = ["田中", "佐藤", "佐々木", "高橋"]
users.push("山下")

# Q11
favorite_sport = ["フットサル", "バスケット"]
selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]
favorite_sport & selected_sport

# Q12
seafoods = ["いか", "たこ", "うに", "しゃけ", "うにぎり", "うに軍艦", "うに丼"]
seafoods.each do |food|
  if food.include?("うに")
    puts "大好きです"
  else
    puts "まぁまぁ好きです"
  end
end

# Q13
numbers = [1, 2, 3, 4, 5]
numbers.reject {|n| n%2==0}

# Q14
arr = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
arr.compact!

# Q15
arr = ["admin", "user", "user", "admin", "admin"]
arr.count("admin")

# Q16
puts "ユーザーの趣味一覧"
hobbys = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
hobbys_table = hobbys.flatten.uniq
hobbys_table.each.with_index(1) do|h,i|
  puts "No#{i} #{h}"
end

# Q17
profile = {name: "satou", age: 33}
profile[:name]

# Q18
profile = {user: {name: "satou", age: 33}}
profile[:user][:name]

# Q19
user_data = {name: "神里", age: 31, address: "埼玉"}
update_data = {age: 32, address: "沖縄"}
user_data.update(update_data)
