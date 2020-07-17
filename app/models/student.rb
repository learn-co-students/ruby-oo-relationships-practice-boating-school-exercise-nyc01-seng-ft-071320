require 'pry'
class Student
    attr_reader :first_name
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(boating_test_name, boating_test_status, instructor)
        BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
    end

    def self.find_student(search_name)
        self.all.find do |student|
            student.first_name == search_name

        end
    end

    # def grade_percentage
    #     BoatingTest.all.count do |tests|
    #         (tests.boating_test_status == "passed") / (tests.student == self)
    #     end
    # end

    def grade_percentage
        (total_pass.count / total_tests.count).to_f
    end

    def total_tests
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    def total_pass
        BoatingTest.all.select do |test|
            test.boating_test_status == "passed"
        end
    end


end



