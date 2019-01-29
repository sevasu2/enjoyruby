class HelloWorld #クラス文
	def initialize(myname = "Ruby") #initializeメソッド
		@name = myname #インスタンス変数の初期化
	end

	def hello #インスタンスメソッド
		puts "hello, world. I am #{@name}"
	end

	def name #@nameを参照
		@name
	end

	def name=(value) #@nameを変更する
		@name = value
	end
end

bob = HelloWorld.new("bob")
alice = HelloWorld.new("Alise")
myname = HelloWorld.new

alice.hello
