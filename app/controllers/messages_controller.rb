class MessagesController < ApplicationController
  
  def new
    @message = Message.new
  end

  def create 
    @message = Message.new(message_params)  

    if @message.valid?
      MessageMailer.send_message(@message).deliver_now
      flash[:success] = "Thank you for your message!"
      redirect_to new_message_path
    else
      render :new 
    end      
  end


private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end