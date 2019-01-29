#(1)１から１００までの整数が昇順に並ぶ配列aを作ってください。

a = []
100.times{|i| a[i] = i + 1} #空の配列を作って、１から１００までの値を格納する

a = (1..100).to_a # 範囲オブジェクト(p.176)のto_aメソッドを使う

#(1)の配列の各要素をすべて100倍した、新しい配列a2を作ってください。
# また、新しい配列を作成せずに、すべての要素を１００倍した要素に置き換えてください

a = (1..100).to_a
# 配列の全ての要素を100倍した値を含む新しい配列を作る
a2 = a.collect{|i| i * 100 }
p a2
# 配列の全ての要素を100倍する
a.collect!{|i| i * 100 }
p a

# (3)(1)の配列から３の倍数だけを取り出した、新しい配列a3を作ってください。
# また、新しい配列を作成せずに、３の倍数以外を削除してください。

# 配列を作成する
a = (1..100).to_a
# aryから3の倍数だけを取り出す
a3 = a.reject{|i| i % 3 != 0 }
p a3
# なお、条件に当てはまるものだけ返す、!が不要なselectというメソッドもあります
a4 = a.select{|i| i % 3 == 0 }
p a4
# aryから3の倍数以外の数を削除する
a.reject!{|i| i % 3 != 0 }
p a

# (4)(1)の配列を逆順に並べる

# 配列を作成する
a = (1..100).to_a
# (a) Array#reverseを使う
a2 = a.reverse
p a2
# (b) Array#sortを使う
a2 = a.sort{|n1, n2| n2 <=> n1 }
p a2
# (c) Array#sort_byを使う
a2 = a.sort_by{|i| -i }
p a2

# (5)(1)の配列に含まれる整数の和を求めてください。

# 配列を作成する
a = (1..100).to_a
# (a) Array#eachで和を求める
result = 0
a.each{|i| result += i }
p result
# (b) Array#injectで和を求める
p a.inject(0){|memo, i| memo += i }


# (6)

# 配列を作成する
ary = (1..100).to_a
result = Array.new
10.times do |i|
  result << ary[i*10, 10]
end
p result

# (7)
def sum_array(ary1, ary2)
  result = Array.new
  i = 0
  ary1.each do |elem1|
    result << elem1 + ary2[i]
    i+=1
  end
  return result
end
# Array#zipを使った別解
def sum_array_zip(ary1, ary2)
  result = Array.new
  ary1.zip(ary2){|a, b| result << a + b }
  return result
end
p sum_array([1, 2, 3], [4, 6, 8])





