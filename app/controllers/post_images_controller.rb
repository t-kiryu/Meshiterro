class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  def create
    @post_iamge = PostImage.new(post_iamge_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
  end

  def show
  end


  private
  def post_image_params
    params.require(:post_image).parmit(:shop_name, :caption)
  end

end
