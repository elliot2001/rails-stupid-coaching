class QuestionsController < ApplicationController
  def ask
  end

  def answer
    tmp = params["formmame"]
    @coach_answer = []
    @coach_answer[0] = tmp
    if tmp == "I am going to work"
        @coach_answer[1] = "Great!"
    elsif tmp.include?("?")
        @coach_answer[1] = "Silly question, get dressed and go to work!"
    else
        @coach_answer[1] = "I don't care, get dressed and go to work!"
    end
  end
end
