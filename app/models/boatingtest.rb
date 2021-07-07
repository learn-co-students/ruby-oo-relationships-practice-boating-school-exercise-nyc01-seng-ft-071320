require 'pry'

class BoatingTest
  attr_accessor :student, :test_name, :test_status, :instructor

  @@all = []

  def initialize (student, test_name=nil, test_status="pending",  instructor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end




end
