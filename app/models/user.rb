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

class User < ActiveRecord::Base
  mount_uploader :profile_image, ProfileUploader
end
