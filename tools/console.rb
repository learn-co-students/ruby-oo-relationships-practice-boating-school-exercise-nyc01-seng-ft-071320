require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ian = Student.new("Ian")
cody = Student.new("Cody")
david = Student.new("David")

puff = Instructor.new("Ms. Puff")
krabs = Instructor.new("Mr. Krabs")

no_crashing = ian.add_boating_test("Don't Crash", "pending", puff)
power_steering_failure = cody.add_boating_test("Power Steering Go Boom", "pending", )
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

