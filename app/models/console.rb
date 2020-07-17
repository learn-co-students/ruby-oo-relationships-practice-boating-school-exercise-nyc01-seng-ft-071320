#Instances
require_relative './boatingtest.rb'
require_relative './student.rb'
require_relative './boatingtest.rb'
require_relative './instructor.rb'

jenn = Student.new("Jennifer")
brian = Student.new("Brian")

tashawn = Instructor.new("Tashawn")

test1 = BoatingTest.new(jenn, "test1", "working", tashawn)
test2 = BoatingTest.new(brian, "test2", "working", tashawn)



binding.pry