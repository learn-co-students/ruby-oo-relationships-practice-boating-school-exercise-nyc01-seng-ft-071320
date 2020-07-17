require 'pry'

class Student

  attr_accessor :name

  @@all = []

  def initialize (name)
  @name = name
  @@all << self
  end
  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
    #binding.pry
  end 

end
