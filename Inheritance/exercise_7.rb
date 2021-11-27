class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(person)
    grade > person.grade ? "Well done!" : "Try harder!"
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 91)
puts joe.better_grade_than?(bob)