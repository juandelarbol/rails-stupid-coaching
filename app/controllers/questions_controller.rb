class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @q = params[:question].to_s
    @a = coach_answer(params[:question].to_s)
  end

  def coach_answer(your_message)
    if your_message == 'I am going to work right now!'
      ''
    elsif your_message.include?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
