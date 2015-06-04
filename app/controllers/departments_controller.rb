class DepartmentsController < ApplicationController
    
    def index
        @departments = Department.all
        
        respond_to do |format|
            format.html do
            
            end
            
            format.json do
                render json: @departments
            end
            
            format.pdf do
            
            end
        end
    end
end
