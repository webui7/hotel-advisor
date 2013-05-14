class CommentsController < ApplicationController
  before_filter :authenticate_user!


  def create
    @comment=Comment.publish_new_comment(params[:hotel_id],params[:comment],current_user)
    respond_to do |format|
      if @comment.save
          Comment.calculate_averagerate(@comment)
          format.html { redirect_to hotel_path(@comment.hotel), notice: 'Comment was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @comment = current_user.comments.find(params[:id])
    @showhotel = @comment.hotel
  end

   def update
    @comment = current_user.comments.find(params[:id])
    respond_to do |format|
      if @comment.update_attributes(params[:comment])
          Comment.calculate_averagerate(@comment)
          format.html { redirect_to @comment.hotel, notice: 'Comment was successfully updated.' }
          format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy
    Comment.calculate_averagerate(@comment)
    respond_to do |format|
      format.html { redirect_to @comment.hotel }
      format.json { head :no_content }
    end
  end

end
