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

    def fail_student(student, test)
        failed_test = BoatingTest.all.find do |element| 
            element.student == student && element.test_name == test.test_name
        end
        if failed_test
            failed_test.test_status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

end

