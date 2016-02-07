class Employee
	attr_reader :name


	def initialize(name = "Anonymous")
		self.name = name
	end

	def name=(name)
		if name==""
			raise "Name can't be blank!"
		end
		@name = name
	end

	def print_name
		puts "Name: #{@name}"
	end
end

class SalariedEmployee < Employee
	attr_reader :salary


	def initialize(name = "Anonymous", salary = 0.0)
		super(name)
		self.salary = salary
	end

	def salary=(salary)
		if salary<0
			raise "A salary of $#{salary} isn't valid!"
		end
		@salary = salary
	end

	def print_pay_stub
		print_name
		pay_for_period = format("%0.2f", (@salary/365.0)*14)
		puts "Pay this period: $#{pay_for_period}"
	end
end

class HourlyEmployee < Employee
	attr_reader :hourly_wage, :hours_per_week


	def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week=0)
		super(name)
		self.hourly_wage = hourly_wage
		self.hours_per_week = hours_per_week
	end

	# Class methods
	def self.security_guard(name = "Anonymous")
		HourlyEmployee.new(name, 19.25, 30)
	end

	def self.cashier(name = "Anonymous")
		HourlyEmployee.new(name, 12.75, 25)
	end

	def self.janitor(name = "Anonymous")
		HourlyEmployee.new(name, 10.50, 20)
	end

	def hourly_wage=(hourly_wage)
		if hourly_wage<0
			raise "An hourly wage of $#{hourly_wage} isn't valid!"
		end
		@hourly_wage = hourly_wage
	end

	def hours_per_week=(hours_per_week)
		if hours_per_week<0
			raise "A work record of #{hours_per_week} hours per week isn't valid!"
		end
		@hours_per_week = hours_per_week
	end

	def print_pay_stub
		print_name
		pay_for_period = format("%0.2f", (@hourly_wage*@hours_per_week*2))
		puts "Pay this period: $#{pay_for_period}"
	end

end

salaried_employee = SalariedEmployee.new("Jane Doe", 100000000)
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new("Robert Paulson", 8.85, 40)
hourly_employee.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
angela.print_pay_stub

edwin = HourlyEmployee.janitor("Edwin Burgess")
edwin.print_pay_stub

ivan = HourlyEmployee.cashier("Ivan Strokes")
ivan.print_pay_stub