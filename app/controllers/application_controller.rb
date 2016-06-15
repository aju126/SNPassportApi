class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user

  def authenticate_user
    error = 'Username or Password does not match'
    username = request.headers['username']
    password = request.headers['password']
    verified = false
    if username && password
      verified = true if User.where(name: username).first.password.eql?(password)
    end
    render_login_failure(error) unless verified
  end

  def render_login_failure(message)
    render status: '401', text: message, content_type: 'text/plain'
  end
end
