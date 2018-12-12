class PhotosController < ApplicationController
    def new
      @user = List.find(params[:user_id])
      @photo = @user.photos.new
      # render :photos
    end

    def create
      @user = List.find(params[:user_id])
      @photo = @user.photos.new(photo_params)
      if @photo.save
        redirect_to user_path(@photo.user)
      else
        render :new
      end
    end

    private
      def photo_params
        params.require(:photo).permit(:date_seen)
      end
  end
