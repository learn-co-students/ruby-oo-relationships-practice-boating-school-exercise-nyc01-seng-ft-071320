#Instances
require_relative './boatingtest.rb'
require_relative './student.rb'
require_relative './boatingtest.rb'
require_relative './instructor.rb'

jenn = Student.new("Jennifer")
brian = Student.new("Brian")

tashawn = Instructor.new("Tashawn")

test1 = BoatingTest.new(brian, "test1", "passed", tashawn)
test2 = BoatingTest.new(brian, "test2", "passed", tashawn)
test3 = BoatingTest.new(brian, "test3", "passed", tashawn)
test4 = BoatingTest.new(brian, "test4", "failed", tashawn)
test5 = BoatingTest.new(brian, "test5", "failed", tashawn)
test6 = BoatingTest.new(brian, "test6", "failed", tashawn)
test7 = BoatingTest.new(brian, "test7", "failed", tashawn)
test8 = BoatingTest.new(brian, "test8", "failed", tashawn)
test9 = BoatingTest.new(brian, "test9", "failed", tashawn)




binding.pry