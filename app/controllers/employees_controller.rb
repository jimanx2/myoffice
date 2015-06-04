class EmployeesController < ApplicationController
    
    def index
        @employees = Employee.all
        
        respond_to do |format| 
          format.html do
          end
        
          format.json do
            render json: @employees
          end
          
          format.pdf do
          end
        end
        
    end   
    
    def show
        @employee = Employee.find(params[:id])
    end
    
    def edit
        @employee = Employee.find(params[:id])
    end
    
    def update
        @employee = Employee.find(params[:id])
        @employee.name = params[:name]
        @employee.employeenum = params[:employeenum]
        @employee.department_id = params[:department_id]
        @employee.position_id = params[:position_id]
        @employee.phonenum = params[:phonenum]
        @employee.email = params[:email]
        @employee.address = params[:address]
        @employee.eligibilityleave = params[:eligibilityleave]
      
      if @employee.save!
        flash[:info] = "Employee record has been updated!"
        reditect_to '/employees'
      end
    end
  
  def destroy
    
    @employee = Employee.find(params[:id])
    if @employee.destroy
      
      flash[:info] = "Employee record has been deleted!"
      redirect_to '/employees'
    end
  end
  
  def new
    @employee = Employee.new
    @employee.name = params[:name]
    @employee.employeenum = params[:employeenum]
    @employee.department_id = params[:department_id]
    @employee.position_id = params[:position_id]
    @employee.phonenum = params[:phonenum]
    @employee.email = params[:email]
    @employee.address = params[:address]
    @employee.eligibilityleave = params[:eligibilityleave]
    
    if @employee.save!
      flash[:info] = "Employee record has been created!"
      redirect_to '/employees'
    end
  end
      
end
