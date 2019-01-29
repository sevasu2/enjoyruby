def cels2fahr(cels)
	cels * 9.0 / 5.0 + 32.0
end

puts cels2fahr(2)

def fahr2cels(fahr)
  return (fahr.to_f - 32) * 5.0 / 9.0
end

puts fahr2cels(3)

def dice
	Random.rand(6) + 1 #0から始まるため1を足す
end

puts dice

def dice10
	ret = 0 #初期値を設定
	10.times do 
		ret += dice
	end
	ret
end

puts dice10


def prime?(num)
	return false if num < 2
	2.upto(Math.sqrt(num)) do |i|
		if num % i == 0
			return false
		end
	end
	return true
end

puts prime?(6)