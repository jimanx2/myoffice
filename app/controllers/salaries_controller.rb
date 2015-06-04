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
        employee_id = params[:employeenum]
        @employee = Employee.find(employee_id)
        
    end
end


