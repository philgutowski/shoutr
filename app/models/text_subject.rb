class TextSubject < ActiveRecord::Base

  def body=(new_body)
    self[:body] = new_body.upcase
  end
end
