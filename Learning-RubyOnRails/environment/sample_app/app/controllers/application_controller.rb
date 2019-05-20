class ApplicationController < ActionController::Base
  protect_from_forgery with: :exceptiondef hello
    render html: "hello, world!"
  end
  def hello
    render html: "hello, world!"
  end
end
