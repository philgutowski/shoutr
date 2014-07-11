class DashboardsController < ApplicationController
  def show
    @text_subject = TextSubject.new
    @image_subject = ImageSubject.new
    @timeline = current_user.timeline.page(params[:page]).per(5)
    @all_shouts = Shout.all.order(created_at: :desc).limit(10)

  end
end
