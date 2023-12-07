class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    redirect_to flats_path if current_user
    @hidenavbar = true
  end
end
