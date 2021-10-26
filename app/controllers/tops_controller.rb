class TopsController < ApplicationController
  PER_PAGE = 5

  def index; end

  def show
    @user = current_user
    @likes = Like.where(user_id: @user.id).all
  end

  def like
    @user = current_user
    @likes = Like.where(user_id: @user.id).all.page(params[:page]).per(PER_PAGE)
  end
end
