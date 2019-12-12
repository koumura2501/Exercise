# Q1
numbers = [1, 2, 3, 4, 5]
numbers.map{|n| n*2-1}

# Q2
names = ["田中", "佐藤", "佐々木", "高橋"]
names << "斎藤"

# Q3
numbers= ["1", "2", "3", "4", "5"]
numbers.map { |n| n.to_i  }

# Q4
animals = ["dog", "cat", "fish"]
animals_2 = ["bird", "bat", "tiger"]
animals.push(animals_2)
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

# Q8   ここは動かないことを確認していますので、再考します。
numbers = ["6", "5", "3", "7", "1"]
numbers.each do |n|
  n.to_i.sprit(",").to_a
end

# Q9
users = ["田中", "佐藤", "佐々木", "高橋"]
users.each.with_index(1) do|user,i|
  puts "会員No.#{i}　#{user}さん"
end

# Q10
users = ["田中", "佐藤", "佐々木", "高橋"]
users.push("山下")
