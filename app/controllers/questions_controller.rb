class QuestionsController < ApplicationController

  def new
    @new_question = Question.new
    if !params[:question].nil?
      @previous_question = Question.new(query_params)
      @result = QuestionExecutor.new(params[:question][:body]).call
      @sql = SqlDisplayer.new(params[:question][:body]).call
    end
  end

  def show

  end

  def index
  end

  private
    def query_params
      params.require(:question).permit(:body)
    end

end
