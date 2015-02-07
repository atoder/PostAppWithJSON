class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @post = Post.find(params[:post_id])
    @image = Image.new
  end

  def show
    @image = Image.find(params[:id])
    @post = @image.post
  end

  def create
    @post = Post.find(params[:post_id])
    @image = @post.images.new(image_params)
    if @image.save
      redirect_to @image, notice: "The image has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to image_path, notice:  "The image has been deleted."
  end
  def image_params
    params.require(:image).permit(:attachment)
  end
end

