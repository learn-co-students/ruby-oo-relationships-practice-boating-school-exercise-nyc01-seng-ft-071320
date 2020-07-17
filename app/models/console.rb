require_relative "./boatingtest.rb"
require_relative "./instructor.rb"
require_relative "./student.rb"
require "pry"

amit = Student.new("Amit")
tashawn = Student.new("Tashawn")
spongebob = Student.new("Spongebob")

cody = Instructor.new("Cody")
sandy = Instructor.new("Sandy")
patrick = Instructor.new("Patrick")

amit.add_boating_test(amit, "Test1", "passed", cody)
amit.add_boating_test(amit, "Test2", "failed", cody)
amit.add_boating_test(amit, "Test3", "failed", patrick)



binding.pry
"something"