class QuestionExecutor

  def initialize(question)
    @question = question
  end
  def call
    begin
      eval(@question)
    rescue NameError
      "query can't be executed"
    end
  end
end
