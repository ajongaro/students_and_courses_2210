
require './lib/student'
require './lib/course'
require './lib/gradebook'
require './lib/school'

RSpec.describe School do
  let(:course1) { Course.new("Calculus", 2) }
  let(:course2) { Course.new("History", 3) }

  let(:student1) { Student.new({name: "Morgan", age: 21}) }
  let(:student2) { Student.new({name: "Jordan", age: 29}) }
  let(:student3) { Student.new({name: "Brady", age: 32}) }
  let(:student4) { Student.new({name: "Thomas", age: 25}) }

  let(:gradebook) { GradeBook.new("Jamison")}

  let(:school) { School.new("University of Denver", [course1, course2])}

  describe '#initialize' do
    it 'exists' do
      expect(school).to be_a(School) 
    end
  end

  describe '#all_grades & grade_in_range' do
    before(:each) do
      course1.enroll(student1)
      course1.enroll(student2)
      course2.enroll(student3)
      course2.enroll(student4)
      student1.log_score(91)
      student1.log_score(81)
      student2.log_score(62)
      student2.log_score(52)
      student3.log_score(73)
      student3.log_score(83)
      student4.log_score(40)
      student4.log_score(45)
      gradebook.add_course(course1)
      gradebook.add_course(course2)
    end
  
    it 'returns all grades across the school' do
      expect(school.all_grades).to eq([91,81,62,52,73,83,40,45])
    end
    
    it 'returns all students with grade in range' do
      expect(school.students_with_grade_between(80,100)).to eq([student1])
    end
  end
end
