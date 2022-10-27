require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe GradeBook do
  let(:course1) { Course.new("Calculus", 2) }
  let(:course2) { Course.new("History", 3) }

  let(:student1) { Student.new({name: "Morgan", age: 21}) }
  let(:student2) { Student.new({name: "Jordan", age: 29}) }

  let(:gradebook) { GradeBook.new("Jamison")}

  describe '#initialize' do
    it 'exists' do
      expect(gradebook).to be_a(GradeBook) 
    end
    
    it 'starts with no courses' do
      expect(gradebook.courses).to eq([])
    end

  end
end