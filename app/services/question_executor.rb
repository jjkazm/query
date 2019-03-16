class QuestionExecutor

  def initialize(question)
    @question = question
  end
  def call
    @question.gsub("\"","").gsub("\'")
  end
end
