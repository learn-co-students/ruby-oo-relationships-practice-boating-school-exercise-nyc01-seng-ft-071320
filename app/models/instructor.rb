class Instructor
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def tests
         BoatingTest.all.select {|test| test.instructor == self}
    end 

    def pass_student(student, test_name)
        found_test = tests.find {|test| test.student == student && test.test_name == test_name }
        if found_test == nil 
            BoatingTest.new(student, test_name, "passed", self) 
        else
            found_test.status = "passed"
            found_test
        end    
    end


    def fail_student(student, test_name)
        found_test = tests.find {|test| test.student == student && test.test_name == test_name }
            if found_test == nil 
            BoatingTest.new(student, test_name, "failed", self)
            else
                found_test.status = "failed" 
                found_test
            end
    end

end
