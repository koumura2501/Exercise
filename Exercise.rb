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

# Q20  添削済み
users = [
  {name: "satou", age: 22},
  {name: "yamada", age: 12},
  {name: "takahashi", age: 32},
  {name: "nakamura", age: 41}
  ]
users.each do |user|
    puts "私の名前は#{user[:name]}です年齢は#{user[:age]}です"
end

# Q21　添削済み
user = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
user.keys

# Q22　添削済み
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

# Q23　添削済み
hash = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
arr = hash.flatten
# Q24　添削済み
users = [
  { name: "saitou", hobby: "soccer", age: 33, role: "admin" },
  { name: "yamada", hobby: "baseball", role: "normal" }
  ]
users.each do |user|
  puts user.has_key?(:age)? "OK" : "NG"
end

# Q25　添削済み
keys = [:age, :name, :hobby, :address]
user = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
keys.each do |key|
  if user.key?(key)
    puts "userには#{key}というキーがあります"
  else
    puts "userには#{key}というキーがありません"
  end
end
# Q26　添削済み
hash = {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
hash_2 = {JavaScript: "console.log", R: "print", Ruby: "puts"}
new_hash = hash.merge(hash_2)

# Q27　#28 修正済み。ありがとうございました。
class User
  def initialize(params)
    @name     = params[:name]
    @age      = params[:age]
    @gender   = params[:gender]
    @admin    = params[:admin]
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

# Q29　添削済み
class User
  def initialize(name:)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end
end
user = User.new(name: "あじー")
puts user.name
user.name = "tanakin"
puts user.name

# Q30　添削済み
class User
  def initialize(**params)
    @name = params[:name]
    @age  = params[:age]
  end

  def introduce
    if @age > 20
      puts "こんにちは、#{@name}と申します、よろしくお願いいたします"
    else
      puts "はいさいまいど〜、#{@name}です！！！"
    end
  end
end
user = User.new(name: "あじー", age: 32)
puts user.introduce
user2 = User.new(name: "ゆたぼん", age: 10)
puts user2.introduce

# Q31　添削済み
class Item
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
book = Item.new("ゼロ秒思考")
puts book.name

# Q32　以下修正済み↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
class User
  attr_reader :age
  def initialize(params)
    @name = params[:name]
    @age  = params[:age]
  end
end

class Zoo
  def initialize(params)
    @name   = params[:name]
    @baby_fee = params[:fee1]
    @child_fee  = params[:fee2]
    @adult_fee  = params[:fee3]
    @senior_fee = params[:fee4]
  end

  def check_entry_fee(user)
    case user.age
    when 1..5
      puts "幼児料金で#{@baby_fee}円です"
    when 6..12
      puts "子供料金で#{@child_fee}円です"
    when 13..64
      puts "成人料金で#{@adult_fee}円です"
    when 65..120
      puts "シニア料金で#{@senior_fee}円です"
    else
      puts "無効な値です"
    end
  end
end

user1 = User.new(name:"タチコマ",age:3)
user2 = User.new(name:"トグサ",age:30)
zoo = Zoo.new(name:"徳山zoo", fee1:0, fee2:500, fee3:1000, fee4:700)
zoo.check_entry_fee(user1)
zoo.check_entry_fee(user2)
# Q33　修正済み
# 順番が変わるとfalseになってしまう事確認しました。
# 勉強になりました。
hash_1 = {name: "あじー", age: 32, address: "札幌", tell: "090-000-000"}
hash_2 = {name: "あじー", age: 32, address: "札幌"}

def has_all_keys?(hash)
  all_keys = [:name, :age, :address, :tell].sort
  hash.keys.sort == all_keys
end

has_all_keys?(hash_1)
has_all_keys?(hash_2)

# Q34　修正済み
languages = ["ruby", "php", "python", "javascript"]
programming_language = languages.map &:capitalize
upper_case_programming_language = languages.map &:upcase
p programming_language
p upper_case_programming_language

# Q35　修正済み　驚くほどすっきりして可読性が上がったように思います。ありがとうございました。
value = [["田中", "JavaScript"], 30]
value.flatten!
key = ["user_name","learning_contents","learning_time"]
[key,value].transpose.to_h

# Q36 修正済み
value = {["田中", "JavaScript"]=>30}
new_value = value.to_a.flatten
key = ["user_name","learning_contents","learning_time"]
[key,new_value].transpose.to_h

# Q37
# ハッシュの中身をマップで一つ一つQ36の形にして処理するイメージなのですが、色々やるもうまくいきません。
value = {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}.to_a
key = ["user_name","learning_contents","learning_time"]
#[["田中", "HTML"], 30], [["斎藤", "JavaScript"], 50]]
hash =[key,value].map {|k,v|[k,v].transpose.to_h}
