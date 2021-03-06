class Manager
    attr_reader :name, :department, :age
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_departments
        @@all.map do |boss|
            boss.department
        end
    end

    def self.average_age
        total = 0
        Manager.all.each {|boss| total += boss.age}
        total / (Manager.all.length)
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end
end