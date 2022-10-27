require './lib/course'
require './lib/student'

RSpec.describe Course do
  let(:course) { Course.new("Calculus", 2) }
  let(:student1) { Student.new({name: "Morgan", age: 21}) }
  let(:student2) { Student.new({name: "Jordan", age: 29}) }

  describe "#initialize" do
    it 'exists' do
      expect(course).to be_a(Course)
    end
    
    it 'has a name' do
      expect(course.name).to eq("Calculus")
    end
    
    it 'has a capacity' do
      expect(course.capacity).to eq(2)
    end

    it 'starts with no students' do
      expect(course.students).to eq([])
    end
  end

  describe '#enroll' do 
    it 'enrolls a student in a course' do
      course.enroll(student1)

      expect(course.students.count).to eq(1)
      expect(course.students).to eq([student1])
    end
  end

  describe "#full?" do
    it 'returns true when course is full' do
      course.enroll(student2)
      course.enroll(student1)
      
      expect(course.full?).to be true
    end
  end
end