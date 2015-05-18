class HomeController < ApplicationController

    def quiz
        @user = User.find_by_password(params['id'])
        @questions = Question.all.sort_by { |q| q.order }
    end

    def answer
        if a = User.find(params['id']).answers.find_by_question_id(params['question'])
            if a.choice != params['answer']
                a.delete
                Question.find(params['question']).answers.new(user_id: params['id'], choice: params['answer']).save
            end
        else
            Question.find(params['question']).answers.new(user_id: params['id'], choice: params['answer']).save
        end

        respond_to do |format|
            format.js { render 'home/answer.js.erb', :layout => false }
        end
    end

end
