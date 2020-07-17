require 'pry'

class Instructor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        Instructor.all << self
    end

    def self.all
        @@all
    end
 
    def pass_student(student, test)
        if BoatingTest.find_test(student, test)
            BoatingTest.find_test(student, test).test_status = "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test)
        if BoatingTest.find_test(student, test)
            BoatingTest.find_test(student, test).test_status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

end

