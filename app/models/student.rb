class Student

    attr_reader :first_name, :last_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(student_first_name)
        self.all.find do |student|
        student.first_name == student_first_name
        end
    end

    def tests 
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    def grade_percentage
        test_pass = []
        test_fail = []
        grade = 0
        status = tests.map do |test|
            test.test_status
        end
        status.each do |value|
            if value == "pass"
                test_pass << value
            end
            grade = ((test_pass.count.to_f)/(tests.count.to_f)*100)
        end 
        grade
    end


    

    
    
    
    
end
# test_counts = BoatingTest.all.test_status.each_with_object(Hash.new(0)) do |status, new_hash|
#     new_hash[status] += 1
