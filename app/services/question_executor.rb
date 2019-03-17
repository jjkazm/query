class QuestionExecutor

  def initialize(question)
    @question = question
  end
  def call
    begin
      message = "invalid query"
      eval(@question).nil? ? message : eval(@question)
    rescue NameError
      message
    end
  end
end
