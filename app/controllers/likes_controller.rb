class LikesController < ApplicationController

before_action :authenticate_user!

  def create
    @picture = Picture.find(params[:picture_id])
    @picture.likes.create
    redirect_to pictures_path
  end
end
