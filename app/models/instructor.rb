require 'pry'
require_relative './boatingtest.rb'
require_relative './student.rb'

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
    def pass_student(student, boatingTestName)
        if Student.all.includes(student) && Boatingtest.all.includes(boatingTestName)
            Boatingtest.status = 'passed'
        elsif !Student.all.includes(student) && Boatingtest.all.includes(boatingTestName)
            Student.new(student)
            Boatingtest.status = 'passed'
        elsif Student.all.includes(student) && !Boatingtest.all.includes(boatingTestName)
            Boatingtest.new(student, boatingTestName, self)
            Boatingtest.status = 'passed'
        elsif !Student.all.includes(student) && !Boatingtest.all.includes(boatingTestName)
            Student.new(student)
            Boatingtest.new(student, boatingTestName, self)
            Boatingtest.status = 'passed'
        end
    end
end