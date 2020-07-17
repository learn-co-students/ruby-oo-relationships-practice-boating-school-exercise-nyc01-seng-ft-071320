require 'pry'
#require_relative './boatingtest.rb'
#require_relative './student.rb'

class Boatingtest
    attr_reader :student, :boatingTestName, :instructor
    attr_writer :boatingTestStatus
    @@all = []
    def initialize(student, boatingTestName, boatingTestStatus = nil, instructor)
        @student = student
        @boatingTestName = boatingTestName
        @boatingTestStatus = boatingTestStatus
        @instructor = instructor
        @@all << self
    end
    def self.all
        @@all
    end

end
