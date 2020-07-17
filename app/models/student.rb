require 'pry'
require_relative "boatingtest.rb"
require_relative "instructor.rb"
class Student

    attr_accessor :first_name
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(first_name)
        self.all.find do |student| student.first_name == first_name
        end
    end

    def grade_percentage(first_name)
        student_record = BoatingTest.all.select do |test| test.student.first_name == first_name end

        test_passed = student_record.count do |test| test.test_status == "passed" end

        percent = (test_passed.to_f / student_record.count.to_f) * 100
    end

end
