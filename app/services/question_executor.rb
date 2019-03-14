class QuestionExecutor

  def initialize(question)
    @question = question
  end
  def call
    binding.pry
    @question.gsub("\"","").gsub("\'")
  end
end
