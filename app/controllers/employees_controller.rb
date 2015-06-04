class EmployeesController < ApplicationController
    
    def index
        @employee = Employee.all
        
       
        respond_to do |format|
            format.html do
            end
end
