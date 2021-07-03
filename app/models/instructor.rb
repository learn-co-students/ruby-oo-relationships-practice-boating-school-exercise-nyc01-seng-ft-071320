class Instructor
    attr_accessor :name
    
    @@all = [] 

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student , test_name)
        boating_test = BoatingTest.all.find {|test| test.name == test_name}
        boating_test.status = "pass"
        return boating_test
    end

    def fail_student(student , test_name)
        boating_test = BoatingTest.all.find {|test| test.name == test_name}
        if !boating_test
            new_test = student.add_boating_test(test_name, "fail", self)
            return new_test
        else
            boating_test.status = "fail"
            return boating_test
        end
    end

end
