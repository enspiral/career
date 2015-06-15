class FeedbacksController < ApplicationController

  def new
    @feedback = Feedback.new
  end


  def create
    @feedback = Feedback.new(feedback_params)

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to root_path, notice: 'Feedback was successfully created.' }
      else
        format.html { render :new , :locals => { :feedback => @feedback} }
      end
    end
  end


  private

  def feedback_params
    params.require(:feedback).permit(:email_address)
  end
end
