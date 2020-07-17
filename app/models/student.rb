require 'pry'
class Student

    attr_accessor :status, :instructor, :name

    @@all = []

    def initialize(name, status)
    @name = name
    @status = status 
    @instructor = instructor 
    end

    def add_instances 
    @@all << self 
    end
binding.pry 
    end
end
