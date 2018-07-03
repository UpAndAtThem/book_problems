# Create a class 'Student' with attributes name and grade. 
# Do NOT make the grade getter public, so joe.grade will raise an error. 
# Create a better_grade_than? method, that you can call like so...

# puts "Well done!" if joe.better_grade_than?(bob)

class Student
  attr_accessor :name
  attr_writer :grade

  def initialize(name, grade)
    self.name = name
    self.grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade ? "Well done!" : "Not as well done!"
  end

  protected

  def grade
    @grade
  end
end

bob = Student.new("bob", 99)
jimmy = Student.new("jimmy", 80)

p jimmy.better_grade_than?(bob)