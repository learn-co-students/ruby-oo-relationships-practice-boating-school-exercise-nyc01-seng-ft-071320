require 'pry'
require_relative './boatingtest.rb'
require_relative './instructor.rb'

class Student 
    attr_accessor :first_name, :boatingTestName
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test (boatingTestName, boatingTestStatus, instructor)
        Boatingtest.new(self, boatingTestName, boatingTestStatus, instructor)
    end

    def find_student(first_name)
        Student.first_name
    end

    def grade_percentage
        studentTests= Boatingtest.all.find_all{|test| test.student.first_name == self.first_name}
        totalTests= studentTests.length.to_f
        totalPassed= studentTests.find_all{|test| test.boatingTestStatus == "passed"}
        numPassed= totalPassed.length.to_f
        percent= (numPassed/totalTests)*100
      end
end
