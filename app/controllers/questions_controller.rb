class QuestionsController < ApplicationController
  def ask
    @questions = ['hello', 'what time is it']

    search = params[:question]

    if search
      @questions = @questions.select do |question|
        question == search.downcase
      end
    end
  end
end
