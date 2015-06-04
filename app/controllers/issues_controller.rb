class IssuesController < ApplicationController
    #before_action :authenticate_user!
    
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
        @participant = Participant.new(params[:id])
        @participant.name = params[:name]
        @participant.mobile = params[:mobile]
        
         if @participant.save!
            
             flash[:info] = "Participant record has been added"
            redirect_to '/participants'
        end
        
    end
    
      def show
          
          @participant = Participant.find(params[:id])
  end  
    
    
    def edit
          
          @participant = Participant.find(params[:id])
end
    
    def update
          
          @participant = Participant.find(params[:id])
        @participant.name = params[:name]
        @participant.mobile = params[:mobile]
        if @participant.save!
            
            flash[:info] = "Participant record has been updated"
            redirect_to '/participants'
        end
    end
    
    def destroy
          @participant = Participant.find(params[:id])
        if @participant.destroy
            flash[:info] = "Participant record has been removed"
            redirect_to '/participants'
        end
    end
        
end
