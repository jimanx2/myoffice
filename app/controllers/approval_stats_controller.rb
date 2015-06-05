class ApprovalStatsController < ApplicationController
    
    
    layout 'administrator'
    
    def index
        @approvalstat = Approvalstat.all
        
        respond_to do |format|
            format.html do
            end
            format.json do 
                render json: @approvalstats
            end
            
        end 
    end
        def new
        end
        def create
            @approvalstat = Approvalstat.new
            @approvalstat.name = params[:name]
            if @approvalstat.save!
                
                flash[:info] = "Approval Status Record Has Been Created"
            redirect_to '/approvalstats'
            end
        end
    def show 
        @approvalstat = Approvalstat.find(params[:id])
    end
    def edit
        @approvalstat = Approvalstat.find(params[:id])
    end
    def update
        @approvalstat = Approvalstat.find(params[:id])
        @approvalstat.name = params[:name]
        
        if @approvalstat.save!
            
            flash[:info] = "Approval Status Has Been Updated"
            redirect_to '/approvalstats'
        end
    end
    
    def destroy 
        @approvalstat = Approvalstat.find(params[:id])
        if @approvalstat.destroy
            flash[:info] = "Approval Status Has Been Destroyed"
            redirect_to '/approvalstats'
        end 
    end
end
