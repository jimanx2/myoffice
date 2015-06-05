class SalariesController < ApplicationController
    layout 'administrator'
    def index
        @salaries = Salary
        .joins('INNER JOIN employees EMP ON (EMP.id = salaries.employee_id)')
        .joins('INNER JOIN paymentstat PMS ON (PMS.id = salaries.paymentstat_id)')
        
        respond_to do |format|
            format.html do
            end
            
        
        
        format.json do
            render json: @salaries
        end
       
        format.pdf do
            
        end
        
    end
end
    
    
    def show
        @employee = Employee.find_by_employeenum(params[:employeenum])
    end
        
    end



