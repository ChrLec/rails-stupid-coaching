class QuestionsController < ApplicationController

  def ask

  end

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
    @coach_answer = ""
    if your_message[your_message.length - 1] == "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      @coach_answer = "Great!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end


  def answer


    coach_answer(params[:answer])
  end
end
