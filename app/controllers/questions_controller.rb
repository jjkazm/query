class QuestionsController < ApplicationController

  def new
    @new_question = Question.new
    unless params[:question].nil?
      @previous_question = Question.new(params.require(:question).permit(:body))
    end

  end

  def create

  end

  def preview
    render :new
  end

  def show

  end

  def index
  end

end
