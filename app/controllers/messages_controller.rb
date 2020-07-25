class MessagesController < ApplicationController
  before_action :require_user

  def create
    @message = current_user.messages.build(body:message_params)
    if @message.save
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:body)
  end

end
