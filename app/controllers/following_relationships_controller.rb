class FollowingRelationshipsController < ApplicationController
  def create
    followed_user = User.find_by(username: params[:user_id])
    current_user.follow(followed_user)

    redirect_to :back
  end

  def destroy
    followed_user = User.find_by(username: params[:user_id])
    current_user.unfollow(followed_user)

    redirect_to :back
  end
end
