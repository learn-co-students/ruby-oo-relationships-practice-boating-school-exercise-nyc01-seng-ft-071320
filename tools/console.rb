require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
no_splashing = spongebob.add_boating_test("Don't Splash 101", "passed", puff)
no_touching = spongebob.add_boating_test("Don't Touching 101", "failed", krabs)
no_running = spongebob.add_boating_test("Don't Running 101", "failed", puff)
no_jumping = spongebob.add_boating_test("Don't Jumping 101", "passed", krabs)
just_nope = spongebob.add_boating_test("Nope", "passed", puff)
no_skipping = spongebob.add_boating_test("Don't Skip 101", "failed", puff)
no_eating = spongebob.add_boating_test("Don't Eat 101", "failed", krabs)
no_singing = spongebob.add_boating_test("Don't Sing 101", "failed", puff)



power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

