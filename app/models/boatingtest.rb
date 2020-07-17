require 'pry'

class BoatingTest

    attr_accessor :student, :test_name, :test_status, :instructor
    @@all = []
    def initialize(student, test_name, test_status, instructor)
        @student = student 
        @test_name = test_name 
        @test_status = test_status 
        @instructor = instructor
        BoatingTest.all << self
    end

    def self.all 
        @@all 
    end

    def self.find_test(student, test)
        BoatingTest.all.find do |element| 
            element.student == student && element.test_name == test.test_name
        end
    end
end

