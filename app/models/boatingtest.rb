require 'pry'
class BoatingTest

    attr_accessor :student, :instructor, :status, :name
    @@all = []

def initialize(status, name, instructor, student)
    @student = student
    @status = []
    @instructor = instructor
    @name = name
    @@all << self

end

def self.all
    @@all 
binding.pry
    end
end
