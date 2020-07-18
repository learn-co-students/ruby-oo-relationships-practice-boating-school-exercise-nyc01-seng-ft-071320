require 'pry'

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

    def pass_student(student, test_name)
       need_to_pass = all_tests.find { |full_test| (full_test.student.first_name == student.first_name && full_test.boating_test_name == test_name) }
        if need_to_pass
            need_to_pass.boating_test_status = "passed"
        else
            return BoatingTest.new(student, test_name, "passed", self)
        end
        need_to_pass
    end

    def fail_student(student, test_name)
        need_to_fail = all_tests.find { |full_test| (full_test.student.first_name == student.first_name && full_test.boating_test_name == test_name) }
         if need_to_fail
             need_to_fail.boating_test_status = "failed"
         else
             return BoatingTest.new(student, test_name, "failed", self)
         end
         need_to_fail
     end

    def all_tests
        BoatingTest.all.select do |test|
            test.instructor == self
        end
    end
end