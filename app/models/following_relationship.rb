class FollowingRelationship < ActiveRecord::Base
  belongs_to :follower, class_name: "User"
  belongs_to :followed_user, class_name: "User"

  validate :user_is_not_following_themselves

  private

  def user_is_not_following_themselves
    if follower_id == followed_user_id
      errors.add(:base, "Users cannot follow themselves")
    end
  end
end
