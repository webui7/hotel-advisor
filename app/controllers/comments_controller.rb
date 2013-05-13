class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @comment = @hotel.comments.build(params[:comment])
    @comment.user_id=current_user.id
    respond_to do |format|
      if @comment.save
          @comments = @hotel.comments
          averagerate = @comments.collect{|comment| comment.hotelrate.rate}.sum.to_f/@comments.length if @comments.length > 0
          @hotel.averagerate = averagerate
          @hotel.save
          format.html { redirect_to hotel_path(@hotel), notice: 'Comment was successfully created.' }
      else
        format.html { redirect_to hotel_path(@hotel)}
      end
    end
  end

  def edit
    @comment = current_user.comments.find(params[:id])
    @showhotel = @comment.hotel
  end

   def update
    @comment = current_user.comments.find(params[:id])
    @showhotel = @comment.hotel
    @comments = @showhotel.comments
    respond_to do |format|
      if @comment.update_attributes(params[:comment])
          averagerate = @comments.collect{|comment| comment.hotelrate.rate}.sum.to_f/@comments.length if @comments.length > 0
          @showhotel.averagerate = averagerate
          @showhotel.save
          format.html { redirect_to @showhotel, notice: 'Comment was successfully updated.' }
          format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @showhotel = @comment.hotel
    @comment.destroy
    @comments = @showhotel.comments
    averagerate = @comments.collect{|comment| comment.hotelrate.rate}.sum.to_f/@comments.length if @comments.length > 0
    @showhotel.averagerate = averagerate
    @showhotel.save

    respond_to do |format|
      format.html { redirect_to @showhotel }
      format.json { head :no_content }
    end
  end

end
