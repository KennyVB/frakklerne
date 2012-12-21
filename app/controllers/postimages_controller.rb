class PostimagesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @postimage = @post.postimages.create(params[:postimage])
    redirect_to post_path(@post)
  end
 
  def destroy
    @post = Post.find(params[:post_id])
    @postimage = @post.postimages.find(params[:id])
    @postimage.destroy
    redirect_to post_path(@post)
  end
end
