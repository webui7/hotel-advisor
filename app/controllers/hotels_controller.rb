class HotelsController < ApplicationController
  before_filter :authenticate_user!
  # GET /hotels
  # GET /hotels.json
  def index
    @hotels = Hotel.all
    @hotels = Hotel.paginate(:page => params[:page], :per_page => 5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hotels }
    end
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
    @hotel = Hotel.find(params[:id])
    @comments = @hotel.comments
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hotel }
    end
  end

  # GET /hotels/new
  # GET /hotels/new.json
  def new
    @hotel = current_user.hotels.new
    @hotel.build_address
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hotel }
    end
  end

  # GET /hotels/1/edit
  def edit
    @hotel = current_user.hotels.find(params[:id])
  end

  # POST /hotels
  # POST /hotels.json
  def create
    @hotel = current_user.hotels.new(params[:hotel])
    @address = @hotel.build_address(params[:address])
    respond_to do |format|
      if @hotel.save and @address.save
          format.html { redirect_to @hotel, notice: 'Hotel was successfully created.' }
          format.json { render json: @hotel, status: :created, location: @hotel }
      else
        format.html { render action: "new" }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hotels/1
  # PUT /hotels/1.json
  def update
    @hotel = current_user.hotels.find(params[:id])
    respond_to do |format|
      if @hotel.update_attributes(params[:hotel]) and @hotel.address.update_attributes(params[:address])
          format.html { redirect_to @hotel, notice: 'Hotel was successfully updated.' }
          format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    @hotel = current_user.hotels.find(params[:id])
    @hotel.destroy

    respond_to do |format|
      format.html { redirect_to hotels_url }
      format.json { head :no_content }
    end
  end
end
