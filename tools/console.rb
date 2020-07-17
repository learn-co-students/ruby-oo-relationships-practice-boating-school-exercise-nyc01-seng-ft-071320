require_relative '../config/environment.rb'



def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

 spongebob = Student.new("Spongebob")
 patrick = Student.new("Patrick")
 
 puff= Instructor.new("Ms.Puff")
 krabs= Instructor.new("Mr.Krabs")

 motor_controls = BoatingTest.new(spongebob, "Motor Controls", "fail", puff)
 bow_test = BoatingTest.new(spongebob, "Bow Test", "fail", puff)
 stern_test = BoatingTest.new(spongebob, "Stern Test", "pass", puff)
 spongebob.add_boating_test("test", "pass", puff) 
 test_find_student = Student.find_student("Spongebob")
 sp = spongebob.grade_percentage 
 puff_test = puff.pass_student(spongebob, "Motor Controls")
 puff_fail = puff.fail_student(spongebob, "Fishing") 
 puff_fail_find = puff.fail_student(spongebob, "Stern Test") 
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

