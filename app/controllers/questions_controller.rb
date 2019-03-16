class QuestionsController < ApplicationController

  def new
    @new_question = Question.new
    unless params[:question].nil?
      @previous_question = Question.new(params.require(:question).permit(:body))
      @result = QuestionExecutor.new(params[:question][:body]).call
      @sql = show_sql
    end
  end

  def show

  end

  def index
  end

  private
    def show_sql
      begin
        QuestionExecutor.new(params[:question][:body]).call.to_sql
      rescue NoMethodError
        "no SQL for this query"
      end
    end

end
