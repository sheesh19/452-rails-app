class PagesController < ApplicationController

    def about
    end

    def home
    end

    def contact
        @members = ['Harry', 'Ron', 'Hermione']
    
        if params[:member]
            @members = @members.select { |member| member.downcase == params[:member].downcase }
        end
    end

end
