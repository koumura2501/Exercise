# Q1　添削済み
numbers = [1, 2, 3, 4, 5]
numbers.map{|n| n*2-1}

# Q2　添削済み
names = ["田中", "佐藤", "佐々木", "高橋"]
names << "斎藤"

# Q3　添削済み
numbers= ["1", "2", "3", "4", "5"]
numbers.map(&:to_i)

# Q4　添削済み
animals = ["dog", "cat", "fish"]
animals_2 = ["bird", "bat", "tiger"]
new_animals = animals + animals_2

# Q5　添削済み
numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
numbers.count(3)

# Q6　添削済み
arr = []
arr.empty?
arr_2 = [1, 5, 8, 10]
arr_2.empty?

# Q7　添削済み
arr = []
arr.is_a?(Array)
arr_2 = {}
arr_2.is_a?(Array)

# Q8　添削済み
numbers = ["6", "5", "3", "7", "1"]
arr = []
numbers.each do |new_numbers|
  arr << new_numbers.to_i
end

# Q9　添削済み
users = ["田中", "佐藤", "佐々木", "高橋"]
users.each.with_index(1) do|user,i|
  puts "会員No.#{i}　#{user}さん"
end

# Q10　添削済み
users = ["田中", "佐藤", "佐々木", "高橋"]
users.push("山下")

# Q11　添削済み
favorite_sport = ["フットサル", "バスケット"]
selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]
favorite_sport = favorite_sport & selected_sport

# Q12　添削済み
seafoods = ["いか", "たこ", "うに", "しゃけ", "うにぎり", "うに軍艦", "うに丼"]
seafoods.each do |food|
  if food.include?("うに")
    puts "大好きです"
  else
    puts "まぁまぁ好きです"
  end
end

# Q13　添削済み
numbers = [1, 2, 3, 4, 5]
numbers.reject {|n| n%2==0}

# Q14　添削済み
arr = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
arr.compact!

# Q15　添削済み
arr = ["admin", "user", "user", "admin", "admin"]
arr.count("admin")

# Q16　添削済み
puts "ユーザーの趣味一覧"
hobbys = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
hobbys_table = hobbys.flatten.uniq
hobbys_table.each.with_index(1) do|h,i|
  puts "No#{i} #{h}"
end

# Q17　添削済み
profile = {name: "satou", age: 33}
profile[:name]

# Q18　添削済み
profile = {user: {name: "satou", age: 33}}
profile[:user][:name]

# Q19　添削済み
user_data = {name: "神里", age: 31, address: "埼玉"}
update_data = {age: 32, address: "沖縄"}
user_data.update(update_data)

# Q20  添削待ち
users = [
  {name: "satou", age: 22},
  {name: "yamada", age: 12},
  {name: "takahashi", age: 32},
  {name: "nakamura", age: 41}
  ]
users.each do |user|
    puts "私の名前は#{user[:name]}です年齢は#{user[:age]}です"
end

# Q21　添削待ち
user = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
user.keys

# Q22　添削待ち
users = [
  {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"},
  {},
  {name: "yamada", age: 22, address: "tokyo", hobby: "soccer", email: "hoge@fuga.com"},
  {},
  {name: "suzuki", age: 44, address: "yamaguchi", hobby: "baseball", email: "hoge@fuga.com"}
  ]
users.each.with_index(1) do |user,i|
  if user.empty?
    puts "データなし"
  else
    puts "No#{i} 名前#{user[:name]}、年齢#{user[:age]}、趣味#{user[:hobby]}、メール#{user[:email]}"
  end
end

# Q23　添削待ち
hash = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
arr = hash.flatten
# Q24　添削待ち
users = [
  { name: "saitou", hobby: "soccer", age: 33, role: "admin" },
  { name: "yamada", hobby: "baseball", role: "normal" }
  ]
users.each do |user|
  puts user.has_key?(:age)? "OK" : "NG"
end

# Q25　添削待ち
keys = [:age, :name, :hobby, :address]
user = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
keys.each do |key|
  if user.key?(key)
    puts "userには#{key}というキーがあります"
  else
    puts "userには#{key}というキーがありません"
  end
end
# Q26　添削待ち
hash = {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
hash_2 = {JavaScript: "console.log", R: "print", Ruby: "puts"}
new_hash = hash.merge(hash_2)

# Q27　#28 nameのところだけ全ての情報が出てきてしましいます。
class User
  def initialize(name:,age:,gender:,admin:)
    @name     = name,
    @age      = age,
    @gender   = gender,
    @admin    = admin
  end

  def info
    puts "名前：#{@name}"
    puts "年齢：#{@age}"
    puts "性別#{@gender}"
    puts @admin == true ? "管理者権限 : 有り" : "管理者権限 : 無し"
  end
end

user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
user2 = User.new(name: "あじー", age: 32, gender: "男", admin: false)

user1.info
puts "-----------"
user2.info
