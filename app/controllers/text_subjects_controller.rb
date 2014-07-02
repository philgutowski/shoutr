class TextSubjectsController < ApplicationController
def create
  text_subject = TextSubject.create(text_subject_params)
  current_user.shouts.create(subject: text_subject)
  redirect_to :dashboard
end

private

def text_subject_params
  params.require(:text_subject).permit(
    :body,
  )
end

end
