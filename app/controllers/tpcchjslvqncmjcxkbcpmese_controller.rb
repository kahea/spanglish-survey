class TpcchjslvqncmjcxkbcpmeseController < ApplicationController

    def index
        @questions = Question.all.sort_by { |q| q.order }
    end

    def create
        question = Question.new(text: params["text"])
        if params["a"] or params[b] or params[c] or params[d]
            question.multiple_choice = true
            question.a = params["a"] if params["a"]
            question.b = params["b"] if params["b"]
            question.c = params["c"] if params["c"]
            question.d = params["d"] if params["d"]
        end
        if params['file']
            question.pic = params['file']
        end
        question.order = Question.all.size > 0 ? Question.all.pluck(:order).max + 1 : 1
        question.save

        redirect_to action: 'index'
    end

    def delete
        question = Question.find(params['question'])
        questions = []
        Question.all.each do |q|
            if q.order > question.order
                q.update_attribute(:order, q.order - 1)
            end
        end
        question.destroy

        redirect_to action: 'index'
    end

    def up
        q = Question.find(params['question'])
        if q.prev
            q.prev.update_attribute(:order, q.order)
            q.update_attribute(:order, q.order - 1)
        end

        redirect_to action: 'index'
    end

    def down
        q = Question.find(params['question'])
        if q.next
            q.next.update_attribute(:order, q.order)
            q.update_attribute(:order, q.order + 1)
        end

        redirect_to action: 'index'
    end

end
