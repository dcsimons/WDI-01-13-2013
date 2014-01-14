# file path: DSimons/WDI/01 13 2013/spec/employee.rb

class Employee

	attr_accessor :name, :title

	@@employee_count = 0

	def initialize(name)
		@name = name
		@title = ""
		@@employee_count += 1

	end

	def greeting
		"Hello, my name is #{@name} and my title is #{@title}."
	end

	# IMPORTANT!  This is a CLASS method.  Class methods MUST have a "self." prior to the method name in order to be defined as a Class method.
	def self.count
		@@employee_count
	end

	def self.resign
		@@employee_count -= 1
	end



end