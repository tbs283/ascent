class Admins::HomesController < ApplicationController
    def top
        @subjects = Subject.all
    end
end
