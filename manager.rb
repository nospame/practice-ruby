require 'faker'

class Employee
  attr_accessor :bio
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary] || 1
    @active = input_options[:active] || false
    @bio = input_options[:bio]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info

class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    employees.each do |employee|
      employee.active = false
    end
  end

  def print_info
    super
    puts "#{@first_name} manages #{@employees.length} employees."
  end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info

employees = []
100.times do
  employee = Employee.new(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    salary: Faker::Number.between(from: 25_000, to: 250_000))
  employee.bio = "#{employee.first_name} #{employee.last_name} is a #{Faker::Job.title} with their #{Faker::Job.education_level} in #{Faker::Job.field}. #{employee.last_name} is a proud #{Faker::Relationship.familial.downcase} who enjoys #{Faker::Hobby.activity.downcase} and #{Faker::Hobby.activity.downcase}."
  employees << employee
end

# employees.each do |employee|
#   puts employee.bio
# end

# p "#{first_name} is a #{Faker::Job.title} and graduated with a #{Faker::Job.education_level} degree in #{Faker::Job.field}. They are a proud #{Faker::Relationship.familial.downcase} and enjoy #{Faker::Hobby.activity.downcase} and #{Faker::Hobby.activity.downcase}."




# puts "Before raises:"
# employee1.print_info
# employee2.print_info
# manager.give_all_raises
# puts "After raises:"
# employee1.print_info
# employee2.print_info

# puts "Status before firing:"
# p employee1.active
# p employee2.active
# manager.fire_all_employees
# puts "Status after firing:"
# p employee1.active
# p employee2.active
