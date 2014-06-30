class FollowingsController < ApplicationController
  def show
    @users = current_user.followed_users
  end
end
