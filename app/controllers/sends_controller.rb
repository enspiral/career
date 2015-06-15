class SendsController < ApplicationController
  def new
    @send = Send.new
  end


  def create
    @send = Send.new(send_params)

    respond_to do |format|
      if @send.save
        format.html { redirect_to home_about_path, notice: 'Feedback was successfully created.' }
      else
        format.html { render :new , :locals => { :send => @send} }
      end
    end
  end


  private

  def send_params
    params.require(:send).permit(:full_name, :email, :messages)
  end
end
