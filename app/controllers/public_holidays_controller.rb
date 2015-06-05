class PublicHolidaysController < ApplicationController
  layout 'administrator'
    def index
      @publicholidays = Publicholiday.all
      
      respond_to do |format|
          format.html do
              
          end
          
          format.json do
              render json: @publicholidays
              
          end
          
          format.pdf do
              
          end   
      end 
    end
  
end
