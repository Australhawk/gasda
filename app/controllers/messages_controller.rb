class MessagesController < ApplicationController
	
	def create
    if params[:message]
      @message = Message.create(parameters)
      @message.user = current_user
      @message.game_id = 1
      @message.save
    end
    
  end
  def parameters
    params.require(:message).permit(:message,:game_id);
  end
end

