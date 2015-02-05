# student.rb

class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
    
  end

  def better_grade_then?(other_student)
    grade > other_student.grade
    
  end

  protected

  def grade
    @grade
    
  end

end

joe = Student.new('Joe', 65)
bob = Student.new('Bob', 33)
puts joe.better_grade_then?(bob)
  