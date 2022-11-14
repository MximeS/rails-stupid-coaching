# class QuestionsController < ApplicationController
#   def ask
#   end

#   def answer
#     @question = params[:question]
#     if @question == 'I am going to work'
#       @answer = 'Great!'
#     elsif @question[-1] == '?'
#       @answer = 'Silly question, get dressed and go to work!'
#     else
#       @answer = "I don't care, get dressed and go to work!"
#     end
#   end
# end
class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    # @answer = coach_answer(@question)
    # @answer = coach_answer_enhanced(@question)
    if @question.downcase == 'i am going to work right now!'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  # def coach_answer_enhanced(question)
  #   answer = coach_answer(question)
  #   if answer != ""
  #     if question.upcase == question
  #       "I can feel your motivation! #{answer}"
  #     else
  #       answer
  #     end
  #   else
  #     ""
  #   end
  # end
end
