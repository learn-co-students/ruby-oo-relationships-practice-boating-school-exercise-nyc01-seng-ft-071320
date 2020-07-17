require 'pry'
class Instructor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student1, test_name)
        var = BoatingTest.all.find {|tests| tests.student.first_name == student1.first_name && tests.test_name == test_name}
        unless var
         BoatingTest.new(student1, test_name, "passed", self)
        else
        var.test_status = "passed"
     end
    end


 
    def fail_student(student, test_name)
        var= BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.test_name == test_name}
        if var
          var.test_status= "failed"
        else
          BoatingTest.new(student, test_name, "failed", self)
        end
    end
end