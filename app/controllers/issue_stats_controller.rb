class IssueStatsController < ApplicationController
  def index
    @issues = Issuestat.all || []
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
          
    @issues = Issuestat.find(params[:id])
    
  end  
end
