class MemesController < ApplicationController
  def index
    @meme = Meme.all
  end

  def show
    @meme = Meme.find(params[:id])
  end
end
