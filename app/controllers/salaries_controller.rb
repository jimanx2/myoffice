class SalariesController < ApplicationController
    layout 'administrator'
    def index
        @salaries = Salary.all
        respond_to do |format|
            format.html do
            end
            
        end
        
    end
    
    def show
        
        
        @employee = Employee.find_by_employeenum(params[:employeenum])
        
        

        
        
        
    end
        
    end



