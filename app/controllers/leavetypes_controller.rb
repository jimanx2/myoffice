class LeavetypesController < ApplicationController
  layout 'administrator'
    def index
        @leavetypes = Leavetype.all
      
      respond_to do |format|
          format.html do
              
          end
          
          format.json do
              render json: @leavetypes
              
          end
          
          format.pdf do
              
          end   
      end 
    end
  
    def new
    end
  
    def create
        @leavetypes = Leavetype.new
        @leavetypes.name = params[:name]
       
        if @leavetypes.save!
            
            flash[:info] = "LeaveType record has been created"
            redirect_to '/leavetypes'
        
        end
    end
  
    def show
        
        @leavetype = Leavetype.find(params[:id])
    end
    
    def edit
        
        @leavetype = Leavetype.find(params[:id])
    end
    
    def update
        
        @leavetype = Leavetype.find(params[:id])
            @leavetype.name = params[:name]
        
        if @leavetype.save!
            
          flash[:info] = "Leavetype record has been updated"
            redirect_to '/leavetypes'
        
        end
    end 
    
    def destroy
        @leavetype = Leavetype.find(params[:id])
        if @leavetype.destroy
            
            flash[:info] = "Leavetype record has been destroyed"
            redirect_to '/leavetypes'
        
        end
    end
end



