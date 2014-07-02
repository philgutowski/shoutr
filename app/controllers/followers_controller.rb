class FollowersController < ApplicationController
  def show
    @followers = current_user.followers
  end
end
