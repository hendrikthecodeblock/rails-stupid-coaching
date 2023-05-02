class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @question = ask
    if @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    @answer
  end
end
