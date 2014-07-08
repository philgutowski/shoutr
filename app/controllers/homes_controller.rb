class HomesController < ApplicationController
  skip_before_action :require_login, only: [:show]
  layout 'homes'
  def show
    @all_shouts = Shout.all.order(created_at: :desc).limit(10)
  end
end
