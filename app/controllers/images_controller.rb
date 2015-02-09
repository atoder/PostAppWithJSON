class ImagesController < ApplicationController
  skip_before_action :verify_authenticity_token

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

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: "The image has been uploaded." }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render "new" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

    @image = Image.find(params[:id])
    @post = @image.post
    @image.destroy
    respond_to do |format|
      format.html {redirect_to post_path(@post), notice:  "The image has been deleted." }
      format.json { head :no_content }
    end
  end
  def image_params
    params.require(:image).permit(:attachment)
  end
end

