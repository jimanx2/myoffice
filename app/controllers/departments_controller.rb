class DepartmentsController < ApplicationController
    layout 'administrator'
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
    
    def new
        
    end
    
    def create
        @department = Department.new
        @department.id = params[:id]
        @department.name = params[:name]
        @department.code = params[:code]
        if @department.save!
            
            flash[:info] = "Department record has been updated"
            redirect_to '/departments'
        end
    end
    
    def show
        @department = Department.find(params[:id])
    end
    
    def edit
        @department = Department.find(params[:id])
    end
    
    def update
        @department = Department.find(params[:id])
            @department.name = params[:name]
        @department.code = params[:code]
        if @department.save!
            
            flash[:info] = "Department record has been updated"
            redirect_to '/departments'
        end
    end
    
    
    def destroy
        @department =Department.find(params[:id])
        if @department.destroy
            
            flash[:info] ="Department record has been destroyed"
            redirect_to '/departments'
        end
    end    
end
