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

  def destroy
    @meme = Meme.find(params[:id])
    @meme.delete
    redirect_to root_path
  end

  def edit
    @meme = Meme.find(params[:id])
  end

  def update
    @meme = Meme.find(params[:id])
    @meme.update_attributes(meme_params)
    redirect_to meme_path(@meme)
  end

  private
  def meme_params
    params.require(:meme).permit(:title, :image, :user_id)
  end
end
