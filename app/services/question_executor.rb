class QuestionExecutor

  def initialize(question)
    @question = question
  end
  def call
    begin
      eval(@question)
    rescue NameError
      "invalid query"
    end
  end
end
