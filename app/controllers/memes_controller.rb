class MemeController < ApplicationController
  def index
    @meme = Meme.all
  end

  def show
    @meme = Meme.find(params[:id])
  end
end
