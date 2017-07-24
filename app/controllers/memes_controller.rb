class MemesController < ApplicationController
  def index
    @meme = Meme.all
  end

  def show
    @meme = Meme.find(params[:id])
  end
  def new
    @meme = Meme.new
  end
  def create
    @meme = Meme.new(meme_params)
    @meme.save
      redirect_to @meme
  end
  private
  def meme_params
    params.require(:meme).permit(:title, :image)
  end
end
