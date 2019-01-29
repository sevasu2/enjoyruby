module HelloModule
	Version = "1.0"

	def hello(name)
		puts "hello, #{name}"
	end
	module_function :hello
end

p HelloModule::Version
HelloModule.hello("Alice")

include HelloModule
p Version]
hello("Alice")