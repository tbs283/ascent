class Publics::SubjectsController < ApplicationController
    def show
        @subject = Subject.find(params[:id])
    end
    
    private
    def subject_params
        params.require(:subject).permit(:name)
    end
end
