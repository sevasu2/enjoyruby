def myloop
	while true
		yield  #ブロックを実行
	end
end

num = 1  #numを初期化
myloop do
	puts "num is #{num}" #numを表示
	break if num > 10 #numが10を超えていたら抜ける
	num *= 2 #numを2倍にする
end