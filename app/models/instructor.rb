class Instructor

    attr_accessor :name 
    @@all = []
    
    def initialize(name)
        @name = name
        save_teach 
    end 

    def self.all
        @@all 
    end 

    def save_teach
        @@all << self 
    end 

    def all_tests
        BoatingTest.all.select {|test| test.instructor == self}
    end

    def pass_student(student, test_title)
        BoatingTest.all.each do |test|
            if test.student == student && test.test_name == test_title
                test.status = 'passed'
            else
                create_student_test(student, test_title, 'passed')
            end
        end
    end

    def create_student_test(student, test_name, status)
        BoatingTest.new(student, test_name, status, self)
    end

end
