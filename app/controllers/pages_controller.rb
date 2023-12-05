class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[flats home]
  def home
    @hidenavbar = true
  end
end
