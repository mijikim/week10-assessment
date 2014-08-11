class HomeController < ApplicationController
  def index
  @gif = Gif.all

  end


end