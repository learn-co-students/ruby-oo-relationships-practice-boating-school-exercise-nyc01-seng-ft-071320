require_relative './boatingtest.rb'
require_relative './instructor.rb'


class Student
    attr_accessor
    attr_reader :first_name
    attr_writer

    @@all = []
    
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test, status, instructor)
        BoatingTest.new(self, test, status, instructor)
    end

    def find_student
        BoatingTest.all.filter { |test| test.student == self }
    end

    def grade_percentage
        tests_taken = BoatingTest.all.count do |test|
            test.student == self
        end
        tests_passed = BoatingTest.all.count do |test|
             test.status == "passed"
        end
        percentage_passed = tests_passed.to_f / tests_taken.to_f * 100
        "#{percentage_passed.round(2)}%"
    end
end





