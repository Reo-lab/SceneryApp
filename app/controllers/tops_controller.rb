class TopsController < ApplicationController
  before_action :require_login
  def index
    @images = Image.all 
    @image = Image.new 
  end
  private

  def require_login
    unless logged_in?
      redirect_to new_session_path, alert: "ログインしてください。"
    end
  end
end