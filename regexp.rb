# (1)電子メールアドレスは「ローカルパート@ドメイン名」という形になっている。

def get_local_and_domain(str)
  str =~ /^([^@]+)@(.*)$/
  localpart = $1
  domain = $2
  return [localpart, domain]
end
p get_local_and_domain("info@example.com")

# (2)

s = "オブジェクト指向は難しい!なんて難しいんだ!"
puts s.gsub(/難しいんだ/, "簡単なんだ").gsub(/難しい/, "簡単だ")

# (3)

def word_capitalize(str)
  return str.split(/\-/).collect{|w| w.capitalize}.join('-')
end
p word_capitalize("in-reply-to") #=> "In-Reply-To"
p word_capitalize("X-MAILER")    #=> "X-Mailer"
