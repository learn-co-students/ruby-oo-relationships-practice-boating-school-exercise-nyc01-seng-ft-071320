require 'pry'
require_relative './boatingtest'
require_relative './student'
require_relative './instructor'

spongebob = Student.new("Spongebob")
puff = Instructor.new("Ms.Puff")
patrick = Student.new("Patrick")
gary = Student.new("Gary")


test1 = BoatingTest.new(patrick, "Crash Test", "passed", puff)
test2 = BoatingTest.new(patrick, "U Turn", "pending", puff)

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)


binding.pry
"ksdhfbv"