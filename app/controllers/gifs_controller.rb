class GifsController < ApplicationController

  def new
    @gif = Gif.new
  end

  def show
    $gif = Gif.all
  end

  def create
    @gif = Gif.new(title: params[:gif][:title], url: params[:gif][:url])

    if @gif.save
      flash[:notice] = "Gif created successfully"
      redirect_to root_path
    else
      render :new
    end
  end


end