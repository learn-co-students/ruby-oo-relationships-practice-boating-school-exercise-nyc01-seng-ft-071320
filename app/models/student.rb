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

end
