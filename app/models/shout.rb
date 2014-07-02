class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject, polymorphic: true

  def body=(newbody)
    self[:body] = new_body.upcase
  end
end
