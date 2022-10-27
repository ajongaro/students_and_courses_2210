class School
  attr_reader :name, :courses

  def initialize(name, courses)
    @name = name
    @courses = courses
  end

  def all_students  
    @courses.map do |course|
      course.students
    end.flatten
  end

  def all_grades
    all_students.map do |student|
      student.scores
    end.flatten
  end

  def students_with_grade_between(low, high)
    all_students.select do |student|
      student.grade > low && student.grade < high
    end
  end
end