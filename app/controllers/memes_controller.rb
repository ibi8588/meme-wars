class MemesController < ApplicationController
  respond_to :js
  def index
    @meme = Meme.all.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end

  def show
    @meme = Meme.find(params[:id])
  end

  def new
    @meme = Meme.new
    if signed_out?
      redirect_to sign_up_path
    end
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      redirect_to @meme
    else
      @meme = Meme.create
      flash[:error] = "Your submission could not be sent. Please try again."
      redirect_to new_meme_path
    end
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.delete
    redirect_to root_path
  end

  def edit
    @meme = Meme.find(params[:id])
  end

  def vote
    if !current_user.liked? @meme
      @meme.liked_by current_user
    elsif current_user.liked? @meme
      @meme.unliked_by current_user
    end

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
