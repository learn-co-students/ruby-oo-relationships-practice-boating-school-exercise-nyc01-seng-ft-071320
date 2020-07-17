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

    def pass_student(student1, test)
        new_test = BoatingTest.all.map do |tests|
            
           if tests.student == student1 && tests.test_name == test
            tests.test_status = "passed"
          # else
            #BoatingTest.new(student, test, "passed", self)
           end
            new_test
        end
    end

    def fail_student(student, test)
        BoatingTest.all.map do |tests|
           if tests.student == student && tests.test_name == test
            tests.test_status = "failed"
           #else
          #  BoatingTest.new(student, test, "failed", self)
           end
        end
    end

end
