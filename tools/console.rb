require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
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
0 #leave this here to ensure binding.pry isn't the last line

