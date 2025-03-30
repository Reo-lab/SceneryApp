class ImagesController < ApplicationController
  before_action :require_login
  def index
    @images = Image.order(created_at: :desc)
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = current_user.images.build(image_params)
    if @image.save
      redirect_to root_path, notice: "写真が投稿されました！"
    else
      logger.error "Image save failed: #{@image.errors.full_messages.join(", ")}"
      redirect_to root_path, alert: "写真の投稿に失敗しました。"
    end
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    if @image.update(image_params)
      redirect_to @image
    else
      render :edit
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
  end

  private

  def image_params
    params.require(:image).permit(:title, :description, :photo)
  end

  def require_login
    unless logged_in?
      redirect_to new_session_path, alert: "ログインしてください。"
    end
  end
end
