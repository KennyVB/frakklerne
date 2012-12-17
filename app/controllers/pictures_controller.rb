class PicturesController < ApplicationController
  def create
    @gallery = Gallery.find(params[:gallery_id])
    @picture = @gallery.pictures.create(params[:picture])
    redirect_to gallery_path(@gallery)
  end
 
  def destroy
    @gallery = Gallery.find(params[:gallery_id])
    @picture = @gallery.pictures.find(params[:id])
    @picture.destroy
    redirect_to gallery_path(@gallery)
  end
end

