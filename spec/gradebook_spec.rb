require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe GradeBook do
  let(:course1) { Course.new("Calculus", 2) }
  let(:course2) { Course.new("History", 3) }

  let(:student1) { Student.new({name: "Morgan", age: 21}) }
  let(:student2) { Student.new({name: "Jordan", age: 29}) }
  let(:student3) { Student.new({name: "Brady", age: 32}) }
  let(:student4) { Student.new({name: "Thomas", age: 25}) }

  let(:gradebook) { GradeBook.new("Jamison")}


  describe '#initialize' do
    it 'exists' do
      expect(gradebook).to be_a(GradeBook) 
    end
    
    it 'starts with no courses' do
      expect(gradebook.courses).to eq([])
    end
  end

  describe '#add_course' do
    it 'adds a course to gradebook' do
      gradebook.add_course(course1)
      gradebook.add_course(course2)

      expect(gradebook.courses).to eq([course1, course2])
    end
  end
      
  describe '#other_methods' do
    before(:each) do
      course1.enroll(student1)
      course1.enroll(student2)
      course2.enroll(student3)
      course2.enroll(student4)
      student1.log_score(91)
      student1.log_score(81)
      student2.log_score(72)
      student2.log_score(62)
      student3.log_score(73)
      student3.log_score(83)
      student4.log_score(40)
      student4.log_score(45)
      gradebook.add_course(course1)
      gradebook.add_course(course2)
    end
  end
end
