class LeavesController < ApplicationController
    
    layout 'administrator'
    
    def index
        @leaves = Leave.all
        
        respond_to do |format|
            format.html do
            end
        
            format.json do
                render json: @leaves
            end
        end
    end
    
    
    def show 
        @leave = Leave.find(params[:id])
    end
    
    def edit 
        @leave = Leave.find(params[:id])
    end
    
    def update
        @leave = Leave.find(params[:id])
        @leave.startdate = params[:startdate]
        @leave.enddate = params[:enddate]
        @leave.remark = params[:remark]
        
        if @leave.save!
            flash[:info] = 
            "Leave apply record has been updated"
            redirect_to '/leaves'
        end
    end
    
    def destroy
        @leave = Leave.find(params[:id])
        
        if @leave.destroy
            flash[:info] = "Leave apply record has been deleted"
            redirect_to '/leaves'
        end
    end
     
    
    def new 
        @leave = Leave.new
        
        @leave.employee_id =   params[:employee_id]
        
        @leave.startdate = params[:startdate]
        
        @leave.enddate = params[:enddate]
        
        @leave.remark = params[:remark]
        
        @leave.approveby_id = params[:approveby_id]
        
        @leave.approvalstat_id = params[:approvalstat_id]
        
        @leave.leavetype_id = params[:leavetype_id]
        
        if @leave.save!
            flash[:info] = "Leave apply has been made!"
            redirect_to '/leaves'
        end
        
    end
end
        
    
    
    
