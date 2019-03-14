class QuestionsController < ApplicationController

  def new
    @question = Question.new
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
