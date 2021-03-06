class TophotelsController < ApplicationController

  def index
    @tophotels = Hotel.tophotel
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hotels }
    end
  end


  def show
    @hotel = Hotel.find(params[:id])
    @comments = @hotel.comments
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hotel }
    end
  end



end
