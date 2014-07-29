class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    redirect_to: 'http://www.knoda.com'
  end

  def show
    su = ShortUrl.where(:slug => params[:slug]).first
    if su
      redirect_to su.long_url
    else
      redirect_to "http://www.knoda.com"
    end
  end
end
