require 'pry'

class Boatingtest
    attr_accessor :boatingTestStatus, :student, :boatingTestName, :instructor
    @@all = []
    def initialize(student, boatingTestName, boatingTestStatus, instructor)
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