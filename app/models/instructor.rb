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

    def pass_student(stud, tst_name)
        if BoatingTest.all.any? {|tests| tests.test_name == tst_name}
            BoatingTest.all.find do |tests|
                if tests.test_name == tst_name
                    tests.test_status = "passed"
                    tests
                end
            end
        else
            x = BoatingTest.new(stud,tst_name,"passed", self)
            x
        end
    end

    def fail_student(stud, tst_name)
        if BoatingTest.all.any? {|tests| tests.test_name == tst_name}
            BoatingTest.all.find do |tests|
                if tests.test_name == tst_name
                    tests.test_status = "failed"
                    tests
                end
            end
        else
            x = BoatingTest.new(stud,tst_name,"failed", self)
            x
        end
    end



end

