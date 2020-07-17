require 'pry'
require_relative './boatingtest.rb'
require_relative './instructor.rb'

class Student
    attr_accessor 
    attr_reader :first_name, :boatingTestName
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
        #Get boating test status
        #Get number of passes (String) / boating test status . count
        arr = Boatingtest.all.select {|scores| scores.student == self}
        i, passCounter, testCounter = 0
        binding.pry
        
        while i < arr.length do
            if arr[i].include?('pass')
                passCounter += 1
            end
            if arr[i].include?('TestStatus')
                testCounter += 1
            end
            i+=1
        end
        #gradePercentage = arr.boatingTestStatus.count('passes') / arr.boatingTestStatus.length
        puts "Inside grade percentage. Here is arr + #{arr}"
    end
    
    # spongebob = Student.new("Spongebob")
    # binding.pry
    # patrick= Student.new("Patrick")

end
