require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
 
puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

test1 = BoatingTest.new(spongebob, "test1", "failed", puff)
test2 = BoatingTest.new(spongebob, "test2", "passed" , krabs)
test3 = BoatingTest.new(spongebob, "test3", "passed", puff)
test4 = BoatingTest.new(spongebob, "test4", "failed" , krabs)
test5 = BoatingTest.new(spongebob, "test5", "failed" , krabs)
test6 = BoatingTest.new(spongebob, "test1", "failed", puff)
test7 = BoatingTest.new(spongebob, "test2", "passed" , krabs)
test8 = BoatingTest.new(spongebob, "test3", "failed", puff)
test9 = BoatingTest.new(spongebob, "test4", "failed" , krabs)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

