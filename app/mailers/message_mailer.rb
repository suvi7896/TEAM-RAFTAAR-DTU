class MessageMailer < ApplicationMailer

  default :to => "kaymark09@gmail.com"

  def send_message(message)
    @message = message

    mail from: @message.email, subject: @message.subject, body: @message.content
  end
end
