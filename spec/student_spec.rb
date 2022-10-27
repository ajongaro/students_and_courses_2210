require './lib/student'

RSpec.describe Student do
  let(:student) { Student.new({name: "Morgan", age: 21}) }

  describe "#initialize" do
    it 'exists' do
      expect(student).to be_a(Student)j
    end
    
    it 'has a name' do
      expect(student.name).to eq("Morgan")
    end
    
    it 'has an age' do
      expect(student.age).to eq(21)
    end

    it 'starts with no scores' do
      expect(student.scores).to eq([])
    end
  end

  describe '#log_score' do
    it 'adds a score to scores array' do
      student.log_score(89)
      student.log_score(78)

      expect(student.scores).to eq([89, 78])
    end
  end

  describe '#grade' do
    it 'calculates average grade' do
      student.log_score(89)
      student.log_score(78)

      expect(student.grade).to eq(83.5)
    end
end