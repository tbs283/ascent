class Publics::HomesController < ApplicationController
    def top
        @subjects = Subject.all
    end
    
    def shoe
        @subject = Subject.find(params[:id])
    end
end
