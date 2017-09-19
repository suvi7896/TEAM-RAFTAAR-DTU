class MessageMailer < ApplicationMailer

  default :to => "teamraftaar@dtu.ac.in"

  def send_message(message)
    @message = message

    mail from: @message.email, subject: @message.subject, body: @message.content
  end
end
