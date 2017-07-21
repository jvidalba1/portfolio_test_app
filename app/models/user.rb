# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  profile_image   :string
#  name            :string
#  description     :text
#  twitter_account :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'twitter/tweet'

class User < ActiveRecord::Base
  mount_uploader :profile_image, ProfileUploader

  validates :name, :profile_image, :description, :twitter_account, presence: true

  validate :valid_twitter_account

  def short_name
    name.split(" ").first
  end

  def timeline
    begin 
      Tweet.timeline(twitter_account, 5)
    rescue Exception => e
      e.message
    end
  end

  private
    def valid_twitter_account
      begin
        Tweet.user(twitter_account)
      rescue Exception => e
        errors.add(:twitter_account, "#{e.message}")
      end
    end
end
