class GradeBook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def print_courses
    @courses.each do |course|
      puts "Course Name: #{course.name}, Capacity: #{course.capacity}"
    end
  end
  
  def add_course(course)
    @courses << course 
  end

  def students
    @courses.map do |course|
      course.students
    end.flatten
  end

  def students_with_scores_under(score)
    students.select do |student|
      student.grade < score
    end
  end

  def all_student_grades
    require 'pry'; binding.pry
  end
end