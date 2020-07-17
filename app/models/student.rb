class Student

    attr_accessor :first_name

    @@all = []


    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(student, test_name, test_status, instructor)
        BoatingTest.new(self,test_name, test_status, instructor)
    end

    def self.find_student(f_name)
        self.all.find {|student| student.first_name == f_name}
    end

    def grade_percentage
        total_tests_taken = BoatingTest.all.select {|tests| tests.student == self}.count
        total_tests_passed = BoatingTest.all.select {|tests| tests.student == self && tests.test_status == "passed"}.count
        total_tests_taken = total_tests_taken.to_f
        total_tests_passed = 100* total_tests_passed.to_f
        score = (total_tests_passed/total_tests_taken).round(2)
    end


end
