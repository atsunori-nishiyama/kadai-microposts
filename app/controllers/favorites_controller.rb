class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  # _microposts.html.erb 内の microposts.each do |micropost| で取り出されたmicropost
  #current＿user　現在ログインしているユーザー（＿sessions＿helperに記載）
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'お気に入りに登録しました'
    redirect_back(fallback_location: root_path)
  end
    
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入り登録を解除しました'
    redirect_back(fallback_location: root_path)
  end
    
    
    
  
  # def create
  #   user = User.find(params[:micropost_id])
  #   current_user.favorite(user)
  #   flash[:success] = 'お気に入りに追加しました'
  #   redirect_to user
  # end

  # def destroy
  #   user = User.find(params[:micropost_id])
  #   current_user.unfavorite(user)
  #   flash[:success] = 'お気に入りを解除しました'
  #   redirect_to user
  # end
end
