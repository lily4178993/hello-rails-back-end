class Api::V1::MessagesController < ApplicationController
  def greeting
    message = Message.order('RANDOM()').first
    render json: { message: message.greeting }
  end
end
