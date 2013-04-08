class TrsersController < ApplicationController
  def open
  end

  def debit
  end

  def credit
  end
  
   def index
    @trsers = Trser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trsers }
    end
  end
  
  def new
    
  end
  
end
