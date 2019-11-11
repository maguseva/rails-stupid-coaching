# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # TODO: return coach answer to your_message
    question = params[:question]
    @answer = if question == 'I am going to work'
                'Great!'
              elsif question.include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
    @answer
  end
end
