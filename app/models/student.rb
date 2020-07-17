class Student

    attr_accessor :f_name
    @@all = []
    
    
    def initialize(f_name)
        @f_name = f_name 
        save_name
    end

    def self.all
        @@all
    end 

    def save_name
        @@all << self 
    end 

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end
    
    
    def self.find_student(first_name)
        self.all.select do |i|
            i.f_name == first_name
        end 
    end

    def boating_tests
        BoatingTest.all.select {|test| test.student == self}
    end

    def grade_percentage
        (passed.to_f / total * 100).round(2)
    end

    def total
        boating_tests.count
    end

    def passed
        boating_tests.count {|test| test.status == 'passed' }
    end

end
