class PositionsController < ApplicationController
    
    layout 'administrator'
    def index
        @position = Position.all
        
        respond_to do |format|
            format.html do
            end
            format.json do 
                render json: @postion
            end
            
        end 
        
    end
        def new
        end
        def create
            @position = Position.new
            @position.name = params[:name]
            @position.code = params[:code]
            @position.eligibilityleave = params[:eligibilityleave]
            
            if @position.save!
                
                flash[:info] = "Position Record HasBeen Created"
            redirect_to '/positions'
            end
        end
    def show 
        @position = Position.find(params[:id])
    end
    def edit
        @position = Position.find(params[:id])
    end
    def update
        @position = Position.find(params[:id])
        @position.name = params[:name]
        @position.code = params[:code]
        @position.eligibilityleave = params[:eligibilityleave]
        if @position.save!
            
            flash[:info] = "Position Record Has Been Updated"
            redirect_to '/positions'
        end
    end
    
    def destroy 
        @position = Position.find(params[:id])
        if @position.destroy
            flash[:info] = "Position Record Has Been Destroyed"
            redirect_to '/positions'
        end 
    end
    
end
