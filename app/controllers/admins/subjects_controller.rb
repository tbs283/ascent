class Admins::SubjectsController < ApplicationController
    def new
        @subject_new = Subject.new
    end
    
    def create
        @subject_new = Subject.new(subject_params)
        if @subject_new.save
            redirect_to admins_subject_path(@subject_new)
        else
            render :new
        end
    end
    
    def show
        @subject = Subject.find(params[:id])
        @questions = @subject.questions
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    def subject_params
        params.require(:subject).permit(:name)
    end
end
