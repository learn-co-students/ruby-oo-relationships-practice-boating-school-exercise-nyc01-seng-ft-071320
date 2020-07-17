require 'pry'

class Instructor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student_name, test_name)
        BoatingTest.all.select do |test|
            if test.boating_test_name == test_name && test.student == student_name
                # puts "It's Working!"
                test.boating_test_status = "passed"
            end
        end
    end

    # def pass_student(stud, tst_name)
    #     BoatingTest.all.find do |tests|
    #         if tests.test_name == tst_name
    #             if tests.student == stud
    #                 #puts "Runs correctly!"
    #                 tests.test_status = "passed"
    #                 #binding.pry
    #             else
    #                 BoatingTest.new(stud,tst_name,"passed", self)
    #             end
    #         end
    #     end
    # end
    
end