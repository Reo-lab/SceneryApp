class ImageTypesController < ApplicationController
  def index
    @image_types = ImageType.all
  end

  def show
    @image_type = ImageType.find(params[:id])
  end

  def new
    @image_type = ImageType.new
  end

  def create
    @image_type = ImageType.new(image_type_params)
    if @image_type.save
      redirect_to @image_type
    else
      render :new
    end
  end

  def edit
    @image_type = ImageType.find(params[:id])
  end

  def update
    @image_type = ImageType.find(params[:id])
    if @image_type.update(image_type_params)
      redirect_to @image_type
    else
      render :edit
    end
  end

  def destroy
    @image_type = ImageType.find(params[:id])
    @image_type.destroy
    redirect_to image_types_path
  end

  private

  def image_type_params
    params.require(:image_type).permit(:name, :description)
  end
end
