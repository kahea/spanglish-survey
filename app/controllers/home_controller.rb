class HomeController < ApplicationController

    def quiz
        @questions = Question.all.sort_by { |q| q.order }
    end

end
