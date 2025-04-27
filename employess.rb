class Employee
  attr_accessor :name, :position, :salary

  def initialize(name, position, salary)
    @name = name
    @position = position
    @salary = salary
  end

  def info
    puts "Имя сотрудника: #{name}, Должность: #{position}, Зарплата: #{salary}."
  end
end

class Project
  attr_accessor :name, :budget

  def initialize(name, budget)
    @name = name
    @budget = budget
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def list_employees
    @employees.each { |employee| puts employee.info }
  end
end

class Company
  attr_accessor :employees, :projects

  def initialize
    @employees = []
    @projects = []
  end

  def hire_employee(employee)
    @employees << employee
  end

  def fire_employee(employee)
    @employees.delete(employee)
  end

  def list_employees
    @employees.each { |employee| puts employee.info }
  end

  def list_projects
    @projects.each { |project| puts "#{project.name} - бюджет: #{project.budget} руб." }
  end
end

employee1 = Employee.new("Иван Иванов", "Разработчик", 100_000)
employee2 = Employee.new("Мария Петрова", "Менеджер", 120_000)

project1 = Project.new("Проект A", 500_000)
project2 = Project.new("Проект B", 200_000)

company = Company.new
company.hire_employee(employee1)
company.hire_employee(employee2)

project1.add_employee(employee1)
project2.add_employee(employee2)

company.list_employees
company.list_projects
