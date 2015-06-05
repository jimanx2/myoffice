class ClaimsController < ApplicationController
    layout 'administrator'
    
    def index
    @claims = Claim.all
        
        respond_to do |format|
          format.html do
              
          end
              format.json do
              render json: @claims
          end
        
    def show
          
    @claimtype = Claimtype.find(params[:id])
        
          end
          
    def new
          
      end
      
      def create
          
        @nc= Claim.new
        @nc.claimtype_id = params[:claimtype]
        @nc.remark = params[:remark]
        @nc.totalclaim = params[:totalclaim]
        @nc.employee_id = params[:empid]
        @nc.approvalstat_id = params[:appstat]
        
          if @nc.save!
              
            flash[:info] = "New Claim Has Been Made!"
              redirect_to '/claims'
          end
      end
            
            
            
            
            
            
        end     
    end
end
