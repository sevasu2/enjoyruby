# (1)曜日を表す英語と日本語との対応を表すハッシュwdayを定義する

wday = {
  "sunday"    => "日曜日",
  "monday"    => "月曜日",
  "tuesday"   => "火曜日",
  "wedensday" => "水曜日",
  "thursday"  => "木曜日",
  "friday"    => "金曜日",
  "saturday"  => "土曜日",
}

# (2)ハッシュのメソッドを使って、(1)のハッシュwdayのペアの数を数える。

wday = {
  "sunday"    => "日曜日",
  "monday"    => "月曜日",
  "tuesday"   => "火曜日",
  "wedensday" => "水曜日",
  "thursday"  => "木曜日",
  "friday"    => "金曜日",
  "saturday"  => "土曜日",
}

p wday.size


# (3)

wday = {
  "sunday"    => "日曜日",
  "monday"    => "月曜日",
  "tuesday"   => "火曜日",
  "wedensday" => "水曜日",
  "thursday"  => "木曜日",
  "friday"    => "金曜日",
  "saturday"  => "土曜日",
}

%w(sunday monday tuesday wedensday thursday friday saturday).each do |day|
  puts "「#{day}」は#{wday[day]}のことです。"
end

# (4)
def str2hash(str)
  hash = Hash.new()
  array = str.split(/\s+/)
  while key = array.shift
    value = array.shift
    hash[key] = value
  end
  return hash
end
p str2hash("bule 青 white 白\nred 赤");





