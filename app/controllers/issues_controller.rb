class IssuesController < ApplicationController
  layout 'administrator'
  before_action :authenticate_user!
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
    
  def show
          @issues = Issue.find(params[:id])
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
    
   
        
end
