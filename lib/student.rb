class Student
  attr_reader :name, :age, :scores

  def initialize(student)
    @name = student[:name]    
    @age = student[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    @scores.sum.to_f / @scores.count
  end
end