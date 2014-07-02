class ImageSubjectsController < ApplicationController
def create
  image_subject = ImageSubject.create(image_subject_params)
  current_user.shouts.create(subject: image_subject)
  redirect_to :dashboard
end

private

def image_subject_params
  params.require(:image_subject).permit(
    :url,
  )
end

end
