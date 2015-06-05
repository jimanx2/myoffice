class IssuesController < ApplicationController
  layout 'administrator'
  
  def index
    @issues = Issue.all || []
      respond_to do |format|
          format.html do
          end
          
          format.json do
            render json: @issues
          end
          
          format.pdf do
              
          end
          
      end
  end
  
  def show
          @issues = Issue.find(params[:id])
  end 
      
  
  def new
        
    end
    
    def create
      @issues = Issue.new(params[:id])
      @issues.title = params[:title]
      @issues.description = params[:description]
      @issues.issuestat = Issuestat.find_by_status("Pending")
      if @issues.save!
            
        flash[:info] = "Issues record has been added"
        redirect_to '/issues'
        end
        
    end
    
   
    
    
    def edit
          
      @issues = Issue.find(params[:id])
      
end
    
    def update
          
          @issues = Issue.find(params[:id])
      @issues.title = params[:title]
      @issues.description = params[:description]
      @issues.issuestat = Issuestat.find_by_status("Pending")
        if @issues.save!
            
          flash[:info] = "Issues record has been updated"
          redirect_to '/issues'
        end
    end
  
  def destroy
    @issues = Issue.find(params[:id])
    if @issues.destroy
      flash[:info] = "Issues record has been removed"
      redirect_to '/issues'
        end
    end
  
  
  def resolved
     @issues = Issue.find(params[:id])
    @issues.issuestat = Issuestat.find_by_status("Resolved")
    if @issues.save!
            
      flash[:info] = "Issues record has been resolved"
          redirect_to '/issues'
        end
  end
  
  def reply
    @issues = Issue.find(params[:id])
    ticketcomment = Ticketcomment.new
    ticketcomment.employee_id = @issues.assign_id
    ticketcomment.remark = params[:remark]
    if ticketcomment.save! and @issues.ticketcomments << ticketcomment
      flash[:info] = "Issues record has been reply"
      redirect_to "/issues/#{@issues.id}"
    end
  end
   
        
end
