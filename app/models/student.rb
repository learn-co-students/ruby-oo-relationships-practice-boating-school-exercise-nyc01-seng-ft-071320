class Student
    attr_accessor :first_name

    @@all = [] 

    def initialize (first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(name)
        self.all.find {|student| student.first_name == name}
    end

    def grade_percentage
       tests = BoatingTest.all.select {|test| test.student == self}
       passed = tests.select {|test| test.status == "pass"} 
       passed.count.to_f / tests.count.to_f  
    end
end
