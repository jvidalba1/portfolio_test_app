class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :twitter_account, :profile_image, :twitter_timeline

  def twitter_timeline
    object.timeline.map {|t| { name: t.user.name, tweet: t.full_text } }
  end
end
