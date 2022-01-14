class Admins::QuestionsController < ApplicationController
    def new
        @question_new = Question.new
    end
    
    def create
        @question_new = Question.new(question_params)
        if @question_new.save
            redirect_to admins_subject_path(@question_new.subject_id)
        else
            render :new
        end
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    def question_params
        params.permit(:subject_id, :atatement, :correct_answer, :commentaly)
    end
end
