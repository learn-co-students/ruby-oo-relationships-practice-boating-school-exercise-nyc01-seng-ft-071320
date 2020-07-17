require 'pry'
class Student
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        Student.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        @@all.find{|student| student.name == name}
    end

    def tests
        BoatingTest.all.select {|test| test.student == self}
    end

    def grade_percentage
        passing_tests = self.tests.select{|test| test.test_status == "pass"}
        grade = (passing_tests.length.to_f / self.tests.length)
        return grade
    end



end
