class FavoriteMemesController < ApplicationController

  before_action :set_meme
  def create
    if Favorite.create(favorited: @meme, user: current_user)
      redirect_to current_user
      flash[:error] = "You favorited that meme"
    else
      redirect_to @meme
      flash[:error] = "Something went wrong..."
    end
  end

  def destroy
    Favorite.where(favorited_id: @meme.id, user_id: current_user.id).first.destroy
    redirect_to @meme
  end

  private

  def set_meme
    @meme = Meme.find(params[:meme_id] || params[:id])
  end

end
