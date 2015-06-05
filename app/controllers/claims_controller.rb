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
          
          format.pdf do
          end
        end
    end
        
    def show
          
      @claim = Claim.find(params[:id])
        
    end
  
  def edit
    @claim = Claim.find(params[:id])
  end
  
  def update
    @nc= Claim.find(params[:id])
    @nc.claimtype_id = params[:claimtype]
    @nc.remark = params[:remark]
    @nc.totalclaim = params[:totalclaim]
    @nc.employee_id = params[:empid]
    @nc.approvalstat_id = params[:appstat]
        if @nc.save!
      
          flash[:info] = "New Claim Has Been Updated!"
              redirect_to '/claims'
        end
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
    @nc.claimattachments << Claimattachment.new(:filename => params[:filename])
  
    if @nc.save!
          
      flash[:info] = "New Claim Has Been Made!"
        redirect_to '/claims'
    end
  end
  
  def destroy
    @claim = Claim.find(params[:id])
    if @claim.destroy
      flash[:info] = "Claim record has been deleted!"
      redirect_to '/claims'
    end
  end
          
end
