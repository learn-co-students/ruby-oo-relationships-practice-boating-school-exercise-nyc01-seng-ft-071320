require_relative './student.rb'
require_relative './boatingtest.rb'

class Instructor
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def pass_student(student, boating_test)
        if BoatingTest.all.include?(student) && BoatingTest.all.include?(boating_test)
            test.status = "passed"
        else 
            BoatingTest.new(student, boating_test, status="passed", self)
        end
    end

    def fail_student(student, boating_test)
        if BoatingTest.all.include?(student) && BoatingTest.all.include?(boating_test)
            test.status = "failed"
        else 
            BoatingTest.new(student, boating_test, status="failed", self)
        end
    end
end

