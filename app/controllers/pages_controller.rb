class PagesController < ApplicationController

  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    if params[:question]
      if params[:question] == "I am doing to work"
        @answers = 'Great!'
      elsif params[:question].include?("?")
        @answers = 'Silly question, get dressed and go to work!'
      else
        @answers = "I don't care, get dressed and go to work!"
      end

  end
end
end

