class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render "hello world!"
  end
end
